#!/bin/bash

#add powerline fonts to font directory (Darwin, Linux)

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
# https://github.com/powerline/fonts/blob/master/install.sh
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
