#!/bin/bash

PWD=`pwd`
PREFIX=$PWD/usr
CFITSIODIR=$PWD/downloads/cfitsio

cd $CFITSIODIR
./configure --prefix=$PREFIX
make shared install

