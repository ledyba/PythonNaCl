NACL_TOOLCHAIN="newlib"
BIT=32
BITARCH="i686-nacl"
#BIT=64
#BITARCH="x86_64-nacl"
CC="${NACL_SDK_ROOT}/toolchain/linux_x86_${NACL_TOOLCHAIN}/bin/${BITARCH}-gcc" CXX="${NACL_SDK_ROOT}/toolchain/linux_x86_${NACL_TOOLCHAIN}/bin/${BITARCH}-gcc -m${BIT}" RANLIB="${NACL_SDK_ROOT}/toolchain/linux_x86_${NACL_TOOLCHAIN}/bin/${BITARCH}-ranlib" AR="${NACL_SDK_ROOT}/toolchain/linux_x86_${NACL_TOOLCHAIN}/bin/${BITARCH}-ar" LIBS="-lppapi_cpp -lppapi -lnosys -lnacl" CFLAGS="-m${BIT} -I${NACL_SDK_ROOT}/toolchain/linux_x86_${NACL_TOOLCHAIN}/${BITARCH}/usr/include" LDFLAGS="-L${NACL_SDK_ROOT}/toolchain/linux_x86_${NACL_TOOLCHAIN}/${BITARCH}/usr/lib" ./configure --host=${BITARCH} --build=x86_64-linux-gnu --prefix=${NACL_SDK_ROOT}/toolchain/linux_x86_${NACL_TOOLCHAIN}/${BITARCH}/usr --disable-shared --with-signal-module=no --with-system-expat
echo "#undef HAVE_DEV_PTMX" >> pyconfig.h
echo "#undef HAVE_LSTAT" >> pyconfig.h
echo "#undef HAVE_FSYNC" >> pyconfig.h
echo "#undef HAVE_FSYNC" >> pyconfig.h
echo "#undef HAVE_FDATASYNC" >> pyconfig.h
make HOSTPYTHON=./hostpyton HOSTPGEN=./Parser/hostpgen CROSS_COMPILE=${BITARCH}- CROSS_COMPILE_TARGET=yes HOSTARCH=${BITARCH} BUILDARCH=x86_64-linux-gnu
make install HOSTPYTHON=./hostpython CROSS_COMPILE=${BITARCH}- CROSS_COMPILE_TARGET=yes

