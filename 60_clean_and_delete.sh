#!/bin/bash
source ${0%/*}/config.sh

echo
echo '---------------------------------'
echo 'Clean and delete build'
echo '---------------------------------'
rm -rf $QT_HOST_DIR
rm -rf $QT_OUTPUT_DIR
rm -rf $QT_SOURCE_DIR/config.*
