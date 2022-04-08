#!/bin/sh -xe
install -d ~/.local/bin
ln -snf $(readlink -e bin/open) ~/.local/bin/box-open
ln -snf $(readlink -e bin/share-folder) ~/.local/bin/box-share-folder
ln -snf $(readlink -e bin/share-usb) ~/.local/bin/box-share-usb
ln -snf $(readlink -e bin/create) ~/.local/bin/box-create
ln -snf $(readlink -e bin/map-id) ~/.local/bin/box-map-id
