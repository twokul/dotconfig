#!/bin/zsh

ln -s ~/.nvim/.nvimrc ~/.nvimrc
git clone git@github.com:VundleVim/Vundle.vim.git bundle/vundle
nvim +PluginInstall +qall
