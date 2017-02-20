#!/bin/bash

cd ~

git clone git@github.com:bhn26/dotfiles.git

cp dotfiles/.vimrc .vimrc

rm -rf dotfiles/

mkdir .vim/

cd .vim/

mkdir bundle/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
