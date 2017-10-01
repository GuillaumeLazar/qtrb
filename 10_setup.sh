#!/bin/bash

set -e

echo
echo '---------------------------------'
echo 'Retrieve toolchain'
echo '---------------------------------'
if [ ! -d tools ] ; then
    git clone --depth=1 -b master https://github.com/raspberrypi/tools
fi
pushd tools
git pull
popd

echo
echo '---------------------------------'
echo 'Retrieve Qt5'
echo '---------------------------------'
if [ ! -d qt5 ] ; then
    git clone git://code.qt.io/qt/qt5.git qt5
    pushd qt5
    perl init-repository
    git checkout v5.9.1
    git submodule update --recursive
    popd
else
    echo 'Qt sources already retrieved'
fi

echo
echo '---------------------------------'
echo 'Retrieve Raspbian image'
echo '---------------------------------'
RASPBIAN_ZIP_NAME=2017-09-07-raspbian-stretch.zip
RASPBIAN_IMAGE_NAME=2017-09-07-raspbian-stretch.img
if [ ! $RASPBIAN_ZIP_NAME ] ; then
    echo 'Download image from raspberrypi.org'
    wget https://downloads.raspberrypi.org/raspbian/images/raspbian-2017-09-08/2017-09-07-raspbian-stretch.zip
else
    echo "$RASPBIAN_ZIP_NAME is downloaded"
fi

if [ ! $RASPBIAN_IMAGE_NAME ] ; then
    echo 'Extract image from zile file'
    unzip $RASPBIAN_IMAGE_NAME
else
    echo "$RASPBIAN_IMAGE_NAME is extracted"
fi

