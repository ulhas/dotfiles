#!/bin/sh

# yabai
cp ~/.yabairc yabai/.yabairc
cp ~/.skhdrc yabai/.skhdrc

# vim
cp ~/.config/nvim/init.vim vim/nvim/init.vim
cp -R ~/.config/nvim/lua vim/nvim

# fish
cp ~/.config/fish/config.fish fish/config.fish
