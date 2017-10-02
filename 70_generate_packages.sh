#!/bin/bash
source ${0%/*}/config.sh
set -e

echo
echo '---------------------------------'
echo 'Generate packages'
echo '---------------------------------'
pushd $ROOT_DIR
if [ ! -d $PCK_DIR ] ; then
    mkdir $PCK_DIR
fi

rm -f $PCK_DIR/qtrb_device_$PCK_VERSION.zip
rm -f $PCK_DIR/qtrb_host_$PCK_VERSION.zip
rm -f $PCK_DIR/qtrb_sysroot_$PCK_VERSION.zip

zip -r $PCK_DIR/qtrb_device_$PCK_VERSION.zip $QT_OUTPUT_DIR
zip -r $PCK_DIR/qtrb_host_$PCK_VERSION.zip $QT_HOST_DIR
zip -r $PCK_DIR/qtrb_sysroot_$PCK_VERSION.zip $SYSROOT_IMG_FILEPATH


du -sh $PCK_DIR/qtrb_host_$PCK_VERSION.zip
du -sh $PCK_DIR/qtrb_device_$PCK_VERSION.zip
du -sh $PCK_DIR/qtrb_sysroot_$PCK_VERSION.zip
popd