#!/bin/bash
#
# Script to compile RebornKernel for lettuce
#
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=$(pwd)/gcc8/bin/aarch64-opt-linux-android-

git clone -b opt-gnu-8.x https://github.com/krasCGQ/aarch64-linux-android gcc8

rm -rf out
mkdir -p out
make O=out reborn_lettuce_defconfig
make O=out -j16
