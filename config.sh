# Global
ROOT_DIR=/opt/qtrb

TOOLCHAIN_DIR=$ROOT_DIR/toolchain

# Qt
QT_TAG_VERSION=v5.9.1
QT_SOURCE_DIR=$ROOT_DIR/qt5
QT_OUTPUT_DIR=$ROOT_DIR/qt5pi # OUTPUT_DIR
QT_DEVICE_DIR=/usr/local/qt5pi # PREFIX_DIR
QT_HOST_DIR=$ROOT_DIR/qt-linux-rasp-pi3 # OUTPUT_HOST_DIR
CROSS_COMPILE=$TOOLCHAIN_DIR/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-
SYSROOT=$ROOT_DIR/sysroot
JOB_COUNT=10

# Raspbian
RASBPIAN_URL=https://downloads.raspberrypi.org/raspbian/images/raspbian-2017-09-08/2017-09-07-raspbian-stretch.zip
RASPBIAN_ZIP_FILENAME=2017-09-07-raspbian-stretch.zip
RASPBIAN_IMG_FILENAME=2017-09-07-raspbian-stretch.img

# Sysroot
SYSROOT_IMG_FILENAME=qtrb_v0.1.img

