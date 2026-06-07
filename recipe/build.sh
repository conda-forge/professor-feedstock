#!/bin/bash
CXXSTD=c++14 ./configure --with-eigen=${PREFIX} --prefix=${PREFIX}
# The Makefile only adds Eigen if CPPFLAGS is unset
# but CPPFLAGS is set (without Eigen) for other reasons
make CXXSTD=c++14 CPPFLAGS="-I${PREFIX}/include/eigen3 ${CPPFLAGS}"
make install
