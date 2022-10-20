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

sleep 2
echo -e "done"
fi
