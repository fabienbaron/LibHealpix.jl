#!/bin/bash

PWD=`pwd`
PREFIX=$PWD/usr
WRAPPERDIR=$PWD/src

cd $WRAPPERDIR
autoreconf --install
./configure --prefix=$PREFIX
make install

