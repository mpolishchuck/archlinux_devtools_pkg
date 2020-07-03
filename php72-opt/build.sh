#!/bin/sh

set -xe

cd php72-opt
makepkg
makepkg --source
sudo pacman -U --noconfirm *.pkg.tar.xz
cd ..

for DIR in php72-opt-*; do
    cd $DIR
    makepkg
    makepkg --source
    cd ..
done
