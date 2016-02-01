#!/bin/zsh

git clone git@github.com:powerline/fonts.git
cd fonts && ./install.sh && cd ..

ln -s ~/.nvim/init.vim ~/.vimrc
ln -s ~/.nvim ~/.vim
git clone git@github.com:VundleVim/Vundle.vim.git bundle/Vundle.vim
nvim +PluginInstall +qall
vim +PluginInstall +qall
