#!/bin/sh

ln -s ~/dotfiles/.bashrc ~/.bashrc
sleep 1
echo export XDG_CONFIG_HOME=$HOME/.config >> ~/.bashrc
echo export XDG_CACHE_HOME=$HOME/.cache >> ~/.bashrc

sleep 1
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/dein/dein.toml ~/.config/nvim/dein.toml
ln -s ~/dotfiles/dein/dein-lazy.toml ~/.config/nvim/dein-lazy.toml
