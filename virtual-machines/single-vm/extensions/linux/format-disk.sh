#
# format-disk.sh
#
#!/bin/bash

partprobe
# Format and mount drive 
(
echo o
echo n
echo p
echo 1
echo
echo
echo w
)|fdisk /dev/sdc
partprobe
mkfs -t ext3 /dev/sdc1
mkdir /data1
mount /dev/sdc1 /data1