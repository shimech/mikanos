#!/bin/sh

sudo umount /dev/sdb1
sudo mkfs.fat /dev/sdb1
sudo mkdir -p /mnt/usbmem
sudo mount /dev/sdb1 /mnt/usbmem
sudo mkdir -p /mnt/usbmem/EFI/BOOT
sudo cp ../BOOTX64.EFI /mnt/usbmem/EFI/BOOT
sudo umount /mnt/usbmem
