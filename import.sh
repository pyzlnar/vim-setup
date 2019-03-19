#!/bin/bash

# Imports your file into the repo
# I just tend forget the actual path of the file

echo Copying .vimrc
cp .vimrc ~/

echo Copying Schema Colors...
cp ~/.vim/colors/* colors
