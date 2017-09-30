#!/bin/bash

#set -e

sudo umount sysroot/sys
sudo umount sysroot/dev
sudo umount sysroot/proc

sudo umount sysroot
sudo losetup -d /dev/loop0
