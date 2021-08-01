#!/bin/sh

umount /dev/sdb1
mkfs.fat /dev/sdb1
mkdir -p /mnt/usbmem
mount /dev/sdb1 /mnt/usbmem
mkdir -p /mnt/usbmem/EFI/BOOT
cp ../BOOTX64.EFI /mnt/usbmem/EFI/BOOT
umount /mnt/usbmem
