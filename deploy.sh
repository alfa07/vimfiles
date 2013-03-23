#!/bin/bash

if [ -f ~/.vimrc ] && [ ! -L ~/.vimrc ]
then
    echo "Backing up existing ~/.vimrc to ~/.vimrc.bak"
    mv ~/.vimrc ~/.vimrc.bak
fi

if [ -L ~/.vim ]
then
    echo "Already have ~/.vim symlink, we're good"
else
    echo "Creating symlink ~/.vim, which points to ~/vimfiles"
    ln -s ~/.vim ~/vimfiles
fi

if [ -L ~/.vimrc ]
then
    echo "Already have ~/.vimrc symlink, we're good"
else
    echo "Creating symlink ~/.vimrc, which points to ~/vimfiles/vimrc"
    ln -s ~/vimfiles/vimrc ~/.vimrc
fi

#git submodule init
#git submodule update
