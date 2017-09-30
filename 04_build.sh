#!/bin/bash
#set -e
pushd qt5
make -j10
make -j10 install
du -sh ../qt5pi
popd
