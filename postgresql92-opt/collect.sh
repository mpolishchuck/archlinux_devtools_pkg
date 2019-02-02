#!/bin/sh

set -e

mkdir -p _pkg _src
cp *.pkg.tar.xz _pkg
for SRC in *.src.tar.gz; do
    tar xf $SRC -C _src
done
