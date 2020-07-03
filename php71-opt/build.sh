#!/bin/sh

set -xe

cd php71-opt
makepkg
makepkg --source
sudo pacman -U --noconfirm *.pkg.tar.xz
cd ..

for DIR in php71-opt-*; do
    cd $DIR
    makepkg
    makepkg --source
    cd ..
done
