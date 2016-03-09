#!/bin/bash

PWD=`pwd`
PREFIX=$PWD/usr
WRAPPERDIR=$PWD/src
MY_PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$PREFIX/lib/pkgconfig

cd $WRAPPERDIR
autoreconf --install
PKG_CONFIG_PATH=$MY_PKG_CONFIG_PATH ./configure --prefix=$PREFIX
make install

