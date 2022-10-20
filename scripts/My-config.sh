#!/usr/bin/env sh
DIR=$HOME/Git

# if ~/Git exisits exit; else
if [ -d "$DIR" ]; then
    echo -e "Configs have been installed"
# Run WM-Select
else
echo -e "Installing Configs........"
mkdir $HOME/Git && cd $HOME/Git
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

sleep 2
echo -e "done......"
fi
