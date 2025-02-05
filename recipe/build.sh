#!/bin/bash
./configure --with-eigen=${PREFIX} --prefix=${PREFIX}
make
make install

