#!/bin/bash

curl -kO http://ipxe.home.local/etcd_core_vmw.ign
#sudo coreos-install -d /dev/sda -i core_vmw.ign -C stable -V current -o vmware_raw
sudo coreos-install -d /dev/sda -i etcd_core_vmw.ign -C stable -V current -o vmware_raw
sudo reboot
