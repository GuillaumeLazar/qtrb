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