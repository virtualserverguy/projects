# Author: Tom Ralph
# 04/27/2018
# 
##################################################################

# Get VSAN Cluster (by Name)
$Cluster = Get-Cluster

# Get VSAN Space Usage
$VSANSpaceUsage = Get-VsanSpaceUsage -Cluster $Cluster

# Calculate actual free space (remove 20% for VSAN)
$VSANActualCapacity = $VSANSpaceUsage.CapacityGB * .8
$VSANActualFree = $VSANActualCapacity - $VSANSpaceUsage.FreeSpaceGB

If ($VSANActualFree < 0) {
    Write-Output "VSAN is lightly used, recommend powering off all but 4 hosts"
    Write-Debug "4 hosts is the minimum supported host count to maintain a quorum and still allow MM on a host (n+1)"
    $VSANActualFree = $VSANActualCapacity
}

# Check VSAN Health:
$ClusterMoRef = $Cluster.ExtensionData.MoRef
$VSANHealthStatus = $VSANHealth.VsanQueryVcClusterHealthSummary($ClusterMoRef,2,$null,$true,$null,$true,'defaultView')

If ($VSANHealthStatus.OverallHealth -ne "green") {
    Write-Output "VSAN in $Cluster.Name is not healthy. Please repair prior to proceeding"
    Write-Debug "VSAN Health is: $VSANHealthStatus"
}

# Assuming hosts provide equal space resources to the VSAN cluster
# TODO: Stop assuming

# Get the # of hosts in cluster and divide the capacity by that
$VSANCluster = Get-VsanRuntimeInfo -Cluster $Cluster

If ($VSANCluster.Count < 4) {
    Write-Output "There are not enough hosts in the cluster to safely power off a host, please add more hosts"
}

$VSANHostCapacity = $VSANSpaceUsage.CapacityGB / $VSANCluster.Count 

# Take the realistic capcity of the cluster (80% of total), 
# divided by the per host capacity, to get the total # of hosts needed

$VSANRequiredHosts = ($VSANActualCapacity - $VSANActualFree) / $VSANHostCapacity
$VSANRequiredHosts = [Math]::Round($VSANRequiredHosts)

# If the required hosts is less than 4, force it to be '4'. This ASSUMES FTT = 1 for the SPBM
# TODO: Add SPBM Check

If ($VSANRequiredHosts < 3) {
    $VSANRequiredHosts = 4
}

# TODO: Prompt User for action & put hosts in MM.