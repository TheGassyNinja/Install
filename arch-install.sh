#/bin/bash
sudo pacman -S bind-tools base-devel cmake nfs-utils alacritty nitrogen tmux exa firefox mc rofi zsh figlet lolcat mpg123 neofetch vlc expac deluge-gtk copyq  pavucontrol bpytop pacman-contrib speedtest-cli kitty python-pywal easyeffects lxappearance-gtk3

cd ~
git clone https://github.com/TheGassyNinja/.config
git clone https://github.com/TheGassyNinja/Wallpapers && cp -r ~$HOME/Wallpapers/py-walpapers ~
git clone https://github.com/TheGassyNinja/Scripts
git clone https://github.com/TheGassyNinja/Notes

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay inxi-git
yay nerd-fonts-source-code-pro
yay nerd-fonts-complete
yay tdrop-git
yay picom-animations-git
yay cava
yay xfce-theme-greybird

cd ~
#
cp $HOME/.config/.vimrc ~
echo "Don't forget OMZ!!"
#
