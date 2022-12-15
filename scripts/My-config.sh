#!/usr/bin/env sh
DIR=$HOME/Git
PAC=$HOME/install/scripts/pac-kages.txt
# if ~/Git exisits exit; else
echo -e "Installing Configs........"
sleep 1
sudo pacman -S $(cat pac-kages.txt | grep -v "#")

cd $HOME/Git
git clone https://github.com/thegassyninja/.config
cp $HOME/Git/.config/.bashrc ~
cp $HOME/Git/.config/.vimrc ~
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay inxi-git
yay nerd-fonts-source-code-pro
yay tdrop-git
yay picom-animations-git
yay cava
yay xfce-theme-greybird
yay lsp-plugins
yay firacode

sleep 2
echo -e "done......"
fi
