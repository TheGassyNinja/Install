#!/usr/bin/env sh


echo -e "(1) DWM - (2) Flexi -  (3) LukeSmith (0) None"
read -p "CHOOSE-DWM Version :" var1
echo $var1
    if [ "$var1" = 1 ]; then

        mkdir $HOME/Suckless && cd $HOME/Suckless
        git clone https://git.suckless.org/dwm
        git clone https://git.suckless.org/st
        git clone https://git.suckless.org/dmenu
        cd dwm
        make && sudo make install
        cd $HOME/Suckless/st
        make && sudo make install
        cd $HOME/Suckless/dmenu
        make && sudo make install
        cd $HOME
        cp /etc/X11/xinit/xinitrc $HOME/.xinitrc
                # {MAKE BETTER sed fundtion} > .xinitrc
        sed -i 's/exec xterm -geometry 80x66+0+0 -name login/exec dwm/g' .xinitrc
        echo "REBOOT and STARTX"

    elif [ "$var1" = 2 ]; then
           echo -e "No Other Ready"
    elif [ "$var1" = 0 ]; then
           echo -e "NONE"
    else
	    echo -e "NOT A CHOICE"
fi
