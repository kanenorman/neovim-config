#!/usr/bin/env bash

brew install cmake;
brew install neovim;


eval DIRECTORY="~/.config/nvim"

if [ -d "$DIRECTORY" ]; 
then
    cp ~/.config/nvim ~/.config/nvim_backup
fi

git clone https://github.com/kanenorman/neovim-config.git ~/.config/nvim;

npm i -g neovim
python -m pip install neovim


brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font
