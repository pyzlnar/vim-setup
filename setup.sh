#!/bin/bash

# Verify vim is installed
if [ ! -x "$(command -v vim)" ]; then
  echo Vim 7.4+ is required in order to proceed
  exit 1
fi

# Create directory
if [ ! -d ~/.vim ]; then
  echo Creating ~/.vim
  mkdir ~/.vim
fi

echo Copying .vimrc
cp .vimrc ~/

echo Copying Schema Colors...
cp -R colors ~/.vim

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  echo Cloning Vundle...
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
  echo Updating Vundle...
  (cd ~/.vim/bundle/Vundle.vim/ && exec git pull)
fi

echo Installing Plugins...
vim +PluginClean! +PluginInstall! +qall
