#!/bin/bash

rm -f .git-completion.bash
rm -f .tmux.conf
rm -f .vimrc

ln -s `pwd`/.git-completion.bash ~/.git-completion.bash
ln -s `pwd`/.tmux.conf ~/.tmux.conf
ln -s `pwd`/.vimrc ~/.vimrc

# install vundle to manage vim plugin
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
