#!/bin/bash
source ${0%/*}/config.sh
#set -e

pushd $QT_SOURCE_DIR
make -j $JOB_COUNT
make -j $JOB_COUNT install
du -sh $QT_OUTPUT_DIR
popd
