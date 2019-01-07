#!/bin/sh

cd php72-opt
makepkg && makepkg --source || exit 1
sudo pacman -U --noconfirm *.pkg.tar.xz
cd ..

for DIR in php72-opt-*; do
    cd $DIR
    makepkg && makepkg --source || exit 1
    cd ..
done
