#!/bin/bash

PWD=`pwd`
PREFIX=$PWD/usr
HEALPIXDIR=$PWD/downloads/Healpix_3.30
MY_PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$PREFIX/lib/pkgconfig

cd $HEALPIXDIR/src/C/autotools
autoreconf --install
PKG_CONFIG_PATH=$MY_PKG_CONFIG_PATH ./configure --prefix=$PREFIX
make install

cd $HEALPIXDIR/src/cxx/autotools
autoreconf --install
PKG_CONFIG_PATH=$MY_PKG_CONFIG_PATH ./configure --prefix=$PREFIX
make install

