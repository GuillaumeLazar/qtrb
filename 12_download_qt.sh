#!/bin/bash

set -e

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
