#!/bin/sh

set -xe

cd php56-opt
makepkg
makepkg --source
sudo pacman -U --noconfirm *.pkg.tar.xz
cd ..

for DIR in php56-opt-*; do
    cd $DIR
    makepkg
    makepkg --source
    cd ..
done
