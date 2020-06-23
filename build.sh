#!/bin/sh

export NDK=/home/lijingyi/android-ndk-r21

export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64

export TARGET=aarch64-linux-android

export API=21

export AR=$TOOLCHAIN/bin/$TARGET-ar
export AS=$TOOLCHAIN/bin/$TARGET-as
export CC=$TOOLCHAIN/bin/$TARGET$API-clang
export LD=$TOOLCHAIN/bin/$TARGET-ld
export RANLIB=$TOOLCHAIN/bin/$TARGET-ranlib
export STRIP=$TOOLCHAIN/bin/$TARGET-strip
./configure --host $TARGET CFLAGS=-static

make
