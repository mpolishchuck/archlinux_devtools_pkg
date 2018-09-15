#!/bin/sh

for DIR in php*; do
    cd $DIR
    makepkg && makepkg --source || break
    cd ..
done
