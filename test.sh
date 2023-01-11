#!/bin/bash
#COMMENT
cp .bashrc ~ # && .bash_profile
echo "Installing gvim" #Add choice for cli editor/set env based on choice
sudo pacman -S gvim # Use CLI env choice

# install vim plug and cp .vimrc ~
#curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#cp .vimrc ~ (might need path)

#get packages
echo "Pick your Packages"
sleep 2
cd scripts && vim pac-kages.txt
echo "packages list updated"
sudo pacman -S $(cat pac-kages.txt | grep -v "#")

# get AUR helper and pkgs
#
# Git WM of choice and configure

# get $TERM package && set $TERM env


# git configs && list and cp ~/.configs
#


#
#
#
