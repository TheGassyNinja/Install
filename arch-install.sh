#/bin/bash
sudo pacman -S bind-tools base-devel cmake nfs-utils nitrogen tmux exa rofi zsh figlet lolcat mpg123 vlc expac deluge-gtk copyq  bpytop pacman-contrib speedtest-cli python-pywal easyeffects lxappearance-gtk3

cd ~
#git clone https://github.com/TheGassyNinja/.config
git clone https://github.com/TheGassyNinja/Wallpapers && cp -r ~$HOME/Wallpapers/py-walpapers ~
git clone https://github.com/TheGassyNinja/Scripts
git clone https://github.com/TheGassyNinja/Notes



cd ~
#
cp $HOME/.config/.vimrc ~
echo "Don't forget OMZ!!"
#
