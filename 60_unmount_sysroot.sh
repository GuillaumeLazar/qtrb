#!/bin/bash
source ${0%/*}/config.sh
set -e

echo
echo '---------------------------------'
echo 'Unmount sysroot'
echo '---------------------------------'
pushd $ROOT_DIR
sudo umount $SYSROOT/sys
sudo umount $SYSROOT/dev
sudo umount $SYSROOT/proc

sudo umount $SYSROOT
sudo losetup -d /dev/loop0
