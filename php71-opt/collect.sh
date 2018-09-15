#!/bin/sh

set -e

mkdir -p _pkg _src
cp php*/*.pkg.tar.xz _pkg
for SRC in php*/*.src.tar.gz; do
    tar xf $SRC -C _src
done
