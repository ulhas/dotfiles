#!/bin/sh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Homebrew bundle
brew tap Homebrew/bundle

# Install Brewfile
brew bundle

# Fish
mkdir ~/.config/fish
cp fish/config.fish ~/.config/fish/config.fish
curl -L https://get.oh-my.fish | fish
omf install https://github.com/dracula/fish

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

# Git config
git config --global user.name "Ulhas Mandrawadkar"
git config --global user.email "ulhas.sm@gmail.com"
git config --global pull.rebase false
git config --global core.editor "nvim"
