#!/bin/bash
set -e
ROOT_PATH=$(readlink -f .)
pushd qt5

CROSS_COMPILE=$ROOT_PATH/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-
SYSROOT=$ROOT_PATH/sysroot
PREFIX_DIR=/usr/local/qt5pi
OUTPUT_DIR=$ROOT_PATH/qt5pi
OUTPUT_HOST_DIR=$ROOT_PATH/qt5host

./configure -no-pch -release -opengl es2 -device linux-rasp-pi3-g++ \
	-device-option CROSS_COMPILE=$CROSS_COMPILE \
	-sysroot $SYSROOT \
	-opensource -confirm-license -make libs \
	-prefix $PREFIX_DIR \
	-extprefix $OUTPUT_DIR \
	-hostprefix $OUTPUT_HOST_DIR \
	-no-use-gold-linker \
	-qt-xcb \
	-v

popd
