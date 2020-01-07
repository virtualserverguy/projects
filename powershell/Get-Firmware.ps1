# Uncomment this line to enable debug output
#$DebugPreference = "Continue"

$AllInfo = @()
ForEach ( $VMHost in Get-VMHost ) {
  $Info = "" | Select VMHost, Device, DeviceName, VendorName, DeviceClass, vid, did, svid, ssid, Driver, DriverVersion, FirmwareVersion, VibVersion

  $VMHostView = Get-vmhost $device.vmhost | Get-View

  $Info.Driver = "BIOS"
  $Info.DeviceName = "BIOS"
  $Info.VendorName = $VMHostView.Hardware.SystemInfo.Vendor
  $Info.VMHost = $VMHost.Name
  $Info.DriverVersion = $VMHostView.Hardware.SystemInfo.Model
  $Info.FirmwareVersion = $VMHostView.Hardware.BiosInfo.BiosVersion

  $AllInfo += $Info

  $devices = $VMHost | Get-VMHostPciDevice | where { $_.Name -like "*Dell HBA330 Mini*" -or $_.DeviceClass -eq "NetworkController" } 

  Foreach ($device in $devices) {

    $Info = "" | Select VMHost, Device, DeviceName, VendorName, DeviceClass, vid, did, svid, ssid, Driver, DriverVersion, FirmwareVersion, VibVersion
    $Info.VMHost = $device.VMHost
    $Info.DeviceName = $device.DeviceName
    $Info.VendorName = $device.VendorName
    $Info.DeviceClass = $device.DeviceClass
    $Info.vid = [String]::Format("{0:x4}", $device.VendorId)
    $Info.did = [String]::Format("{0:x4}", $device.DeviceId)
    $Info.svid = [String]::Format("{0:x4}", $device.SubVendorId)
    $Info.ssid = [String]::Format("{0:x4}", $device.SubDeviceId)

    if ($device.DeviceClass -eq "NetworkController"){
      # Get NIC list to identify vmnicX from PCI slot Id
      $esxcli = $device.VMHost | Get-EsxCli -V2
      $niclist = $esxcli.network.nic.list.Invoke();
      $vmnicId = $niclist | where { $_.PCIDevice -like '*'+$device.Id}
      $Info.Device = $vmnicId.Name
      
      # Get NIC driver and firmware information
      Write-Host "Processing $($Info.VMHost.Name) $($Info.Device) $($Info.DeviceName)"
      if ($vmnicId.Name){      
        $vmnicDetail = $esxcli.network.nic.get.Invoke(@{nicname = $vmnicId.Name})
        $Info.Driver = $vmnicDetail.DriverInfo.Driver
        $Info.DriverVersion = $vmnicDetail.DriverInfo.Version
        $Info.FirmwareVersion = $vmnicDetail.DriverInfo.FirmwareVersion
      
        # Get driver vib package version

        $driverVib = $esxcli.software.vib.get.Invoke(@{vibname = $vmnicDetail.DriverInfo.Driver})

        $Info.VibVersion = $driverVib.Version
      }
    
    } elseif ($device.DeviceName -eq "Dell HBA330 Mini"){
      # Identify HBA (FC or Local Storage) with PCI slot Id
      # Todo: Sometimes this call fails with: Get-VMHostHba  Object reference not set to an instance of an object.
      Write-Host "Processing $($Info.VMHost.Name) $($Info.Device) $($Info.DeviceName)"
      $vmhbaId = $device.VMHost |Get-VMHostHba -ErrorAction SilentlyContinue | where { $_.Device -like 'vmhba0'} 
      $Info.Device = $vmhbaId.Device
      $Info.Driver = $vmhbaId.Driver
    
      # Get driver vib package version
      $driverVib = $esxcli.software.vib.get.Invoke(@{vibname = "lsi-msgpt3"})

      $Info.VibVersion = $driverVib.Version
    }
  $AllInfo += $Info
  }
}

# Display all Infos
#$AllInfo

# Display ESXi, DeviceName and supported state
#$AllInfo |select VMHost,Device,DeviceName,Supported,Referece |ft -AutoSize

# Display device, driver and firmware information
$AllInfo |select VMHost,Device,DeviceName,Driver,DriverVersion,FirmwareVersion,VibVersion |ft -AutoSize

# Export to CSV
$AllInfo |Export-Csv -NoTypeInformation IO-Device-Report.csv

# Export to HTML
$css  = "table{ Margin: 0px 0px 0px 4px; Border: 1px solid rgb(200, 200, 200); Font-Family: Tahoma; Font-Size: 8pt; Background-Color: rgb(252, 252, 252); }"
$css += "tr:hover td { Background-Color: #6495ED; Color: rgb(255, 255, 255);}"
$css += "tr:nth-child(even) { Background-Color: rgb(242, 242, 242); }"
Set-Content -Value $css -Path IO-Device-Report.css
$AllInfo | ConvertTo-Html -CSSUri "IO-Device-Report.css" | Set-Content "IO-Device-Report.html"