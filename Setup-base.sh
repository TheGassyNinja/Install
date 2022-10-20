#!/usr/bin/env sh
#git clone install
# {Not Neededsudo pacman -R vim

#Vars
$HOME=/home/$USER
sudo pacman -S gvim mc openssh bind-tools base-devel exa expac
echo -e "(1) MYpersonal .config - (2) Your .config -  (0) None"
read -p "Choose CONFIG: " var1
echo $var1
    if [ "$var1" = 1 ]; then
           $HOME/install/scripts/My-config.sh

    elif [ "$var1" = 2 ]; then
           echo -e "git clone yours"
    elif [ "$var1" = 0 ]; then
           echo -e "NONE"
    else
	    echo -e "NOT A CHOICE"
fi


echo -e "(1) DWM - (2) Other -  (0) None"
read -p "CHOOSE-WM :" var1
echo $var1
    if [ "$var1" = 1 ]; then
        $HOME/install/scripts/dwm-choice.sh
    elif [ "$var1" = 2 ]; then
           echo -e "No Other Ready"
    elif [ "$var1" = 0 ]; then
           echo -e "NONE"
    else
	    echo -e "NOT A CHOICE"
fi


echo "FINISHED"
echo "REBOOT and STARTX"
