#!/bin/sh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Homebrew bundle
brew tap Homebrew/bundle

# Install Brewfile
brew bundle

# Install antigen
curl -L git.io/antigen > antigen.zsh

# Install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy yabairc
cp yabai/.yabairc ~/.yabairc
cp yabai/.skhdrc ~/.skhdrc

# Copy vimrc
cp vim/.vimrc ~/.vimrc
mkdir ~/.config/nvim
cp vim/init.vim ~/.config/nvim/init.vim
cp vim/coc-settings.json ~/.config/nvim/coc-settings.json

# Copy zshrc
cp zshrc/.zshrc ~/.zshrc

# Git config
git config --global user.name "Ulhas Mandrawadkar"
git config --global user.email "ulhas.sm@gmail.com"
git config --global pull.rebase false
git config --global core.editor "nvim"
