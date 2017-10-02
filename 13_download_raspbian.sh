#!/bin/bash
source ${0%/*}/config.sh
set -e

echo
echo '---------------------------------'
echo 'Retrieve Raspbian image'
echo '---------------------------------'
pushd $ROOT_DIR
if [ ! $RASPBIAN_ZIP_FILENAME ] ; then
    echo 'Download image from raspberrypi.org'
    wget $RASBPIAN_URL
else
    echo "$RASPBIAN_ZIP_FILENAME is downloaded"
fi

if [ ! $RASPBIAN_IMG_FILENAME ] ; then
    echo 'Extract image from zile file'
    unzip $RASPBIAN_IMG_FILENAME
else
    echo "$RASPBIAN_IMG_FILENAME is extracted"
fi
popd