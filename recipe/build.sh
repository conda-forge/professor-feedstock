#!/bin/bash
./configure CXXSTD=c++14 --with-eigen=${PREFIX} --prefix=${PREFIX}
# The Makefile only adds Eigen if CPPFLAGS is unset
# but CPPFLAGS is set (without Eigen) for other reasons
CPPFLAGS="-I${PREFIX}/include/eigen3 $CPPFLAGS"
make CXXFLAGS="${CXXFLAGS} -std=c++14"
make install
