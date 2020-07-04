#!/bin/sh

set -xe

cd php73-opt
makepkg
makepkg --source
sudo pacman -U --noconfirm *.pkg.tar.xz
cd ..

for DIR in php73-opt-*; do
    cd $DIR
    makepkg
    makepkg --source
    cd ..
done
