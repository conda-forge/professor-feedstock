#!/bin/bash
# Hacky way to make ./configure pass: false resolves to /usr/bin/false
# The build process should proceed without ROOT
export ROOTCONFIG=false
./configure --with-eigen=${PREFIX} --prefix=${PREFIX}
# The Makefile only adds Eigen if CPPFLAGS is unset
# but CPPFLAGS is set (without Eigen) for other reasons
CPPFLAGS="-I${PREFIX}/include/eigen3 $CPPFLAGS"
make
make install
