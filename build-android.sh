#!/bin/bash
 
set -e
set -x

cd `dirname $0`
pwd
autoreconf -i
NDK_HOME=/Users/tianbei/.localapps/android-ndk-r12b
NDK_BIN=$NDK_HOME/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin
export CC="$NDK_BIN/arm-linux-androideabi-gcc --sysroot=$NDK_HOME/platforms/android-12/arch-arm/"
export AR="$NDK_BIN/arm-linux-androideabi-ar"
export RANLIB="$NDK_BIN/arm-linux-androideabi-ranlib"
export STRIP="$NDK_BIN/arm-linux-androideabi-strip"
export CFLAGS="-fPIC -ggdb -mfpu=vfp -mfloat-abi=softfp -std=c99 -pie -fPIE"
export CPPFLAGS="-fPIC -ggdb -mfpu=vfp -mfloat-abi=softfp -pie -fPIE"
export LIBS="-lc -lgcc"

./configure -host=x86_64 --prefix=/Users/tianbei/hello
make -s
