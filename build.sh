#!/bin/bash

set -e

if [ ! -d `pwd`/build]; then
    mkdir `pwd`/build
fi

rm -rf `pwd`/build/*

cd `pwd`/build &&
    cmake .. &&
    make

cd ..

if [ ! -d /usr/include/myHttpServer ]; then
    mkdir /usr/include/myHttpServer
fi

for header in `ls *.h`
do
    cp $header /usr/include/myHttpServer
done

cp `pwd`/lib/libmyHttpServer.so /usr/lib

ldconfig