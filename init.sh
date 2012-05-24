#!/bin/sh

if ! [ -L "$HOME/.vimrc" ]; then
    rm -f ~/.vimrc
    ln -s ~/Code/dotfiles/vimrc ~/.vimrc
fi

if ! [ -d "$HOME/.vim/bundle/vundle" ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall
fi


