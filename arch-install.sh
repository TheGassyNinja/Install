#/bin/bash
# install pkgs
sudo pacman -S bind-tools base-devel cmake nfs-utils alacritty picom nitrogen tmux exa firefox mc polybar rofi zsh figlet lolcat mpg123 neofetch vlc expac deluge-gtk copyq gvim 

# AUR pkgs
# install yay
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay inxi-git nerd-fonts-source-code-pro

#Currently in yay (Dir)
cd ~ && mkdir Git && cd Git
#Clone Git My Repos
git clone https://github.com/TheGassyNinja/i3-configs
git clone https://github.com/TheGassyNinja/confs
git clone https://github.com/TheGassyNinja/Wallpapers
cd ~ && git clone https://github.com/TheGassyNinja/Scripts
git clone https://github.com/TheGassyNinja/Notes

#Copy files into functional locations (currently ~)
# From i3-configs
cp ~/Git/i3-configs/config ~
cp ~/Git/i3-configs/picom.conf ~/.config
# From Confs
mkdir ~/.config/alacritty && cp ~/Git/Confs/alacritty.yml ~/.config/alacritty/
cp -r ~/Git/Confs/vis ~/.config/
cp ~/Git/Confs/.vimrc ~

#

#

#

#

#

#

