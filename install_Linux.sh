#!/bin/bash

if [ ! -e "${HOME}/.bashrc" ]; then
    ln -s "${HOME}/dotfiles/.bashrc" "${HOME}/.bashrc"
fi

if [ ! -e "${HOME}/.vimrc" ]; then
    ln -s "${HOME}/dotfiles/.vimrc" "${HOME}/.vimrc"
fi

if [ ! -e "${HOME}/.vim" ]; then
    mkdir "${HOME}/.vim" 
fi

read -p "Enter to continue..."
