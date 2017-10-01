#!/bin/bash

# 200 Mo
# apt-get update -> 145 Mo
# rpi-update -> 16 Mo


RASPBIAN_IMAGE_NAME=2017-09-07-raspbian-stretch_8go.img

set -e

if [ ! -d sysroot ] ; then
    mkdir sysroot
fi

sudo losetup -P /dev/loop0 $RASPBIAN_IMAGE_NAME
sudo mount /dev/loop0p2 sysroot

sudo apt-get -y install qemu-user-static
sudo cp /usr/bin/qemu-arm-static sysroot/usr/bin/

sudo mount -o bind /proc sysroot/proc
sudo mount -o bind /dev sysroot/dev
sudo mount -o bind /sys sysroot/sys

#sudo chroot sysroot /bin/bash -c 'apt-get update'
#sudo chroot sysroot /bin/bash -c 'rpi-update'
sudo chroot sysroot /bin/bash -c 'apt install -y libfontconfig1-dev libfreetype6-dev libx11-dev libxext-dev libxfixes-dev libxi-dev libxrender-dev libxcb1-dev libx11-xcb-dev libxcb-glx0-dev'
sudo chroot sysroot /bin/bash -c 'apt install -y libxcb1 libxcb1-dev libx11-xcb1 libx11-xcb-dev libxcb-keysyms1 libxcb-keysyms1-dev libxcb-image0 libxcb-image0-dev libxcb-shm0 libxcb-shm0-dev libxcb-icccm4 libxcb-icccm4-dev libxcb-sync1 libxcb-sync-dev libxcb-render-util0 libxcb-render-util0-dev libxcb-xfixes0-dev libxrender-dev libxcb-shape0-dev libxcb-randr0-dev libxcb-glx0-dev libxcb-xinerama0-dev'
