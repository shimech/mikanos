#!/bin/sh

qemu-img create -f raw ../disk.img 200M
mkfs.fat -n 'MIKAN OS' -s 2 -f 2 -R 32 -F 32 ../disk.img
sudo mount -o loop ../disk.img ../mnt
sudo mkdir -p ../mnt/EFI/BOOT
sudo cp ../BOOTX64.EFI ../mnt/EFI/BOOT/BOOTX64.EFI
sudo umount ../mnt
