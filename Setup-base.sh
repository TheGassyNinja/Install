#!/usr/bin/env sh
#git clone install.sh
# {Not Neededsudo pacman -R vim


$HOME=/home/$USER


sudo pacman -S gvim mc openssh


mkdir $HOME/Git && cd $HOME/Git
git clone https://github.com/thegassyninja/.config
cp $HOME/Git/.config.bashrc ~
cp $HOME/Git/.config/.vimhrc ~
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



# PICK WM
# DWM
mkdir $HOME/Suckless && cd $HOME/Suckless
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu
cd dwm
make && make install
cd $HOME/Suckless/st
make && make install
cd $HOME/Suckless/dmenu
make && make install

#
#
#
#
#
cd $HOME
cp /etc/X11/xinit/xinitrc $HOME/.xinitrc
# {MAKE BETTER sed fundtion} > .xinitrc
sed -i 's/exec xterm -geometry 80x66+0+0 -name login/exec dwm/g' .xinitrc



echo "REBOOT and STARTX"
