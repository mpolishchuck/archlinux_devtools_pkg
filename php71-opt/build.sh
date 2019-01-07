#!/bin/sh

cd php71-opt
makepkg && makepkg --source || exit 1
sudo pacman -U --noconfirm *.pkg.tar.xz
cd ..

for DIR in php71-opt-*; do
    cd $DIR
    makepkg && makepkg --source || exit 1
    cd ..
done
