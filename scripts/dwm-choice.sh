#!/usr/bin/env sh
echo -e ""
echo -e "You have a few Choices here"
echo -e ""
echo -e "(1) DWM - (2) Flexi -  (3) LukeSmith (0) None"
read -p "CHOOSE-DWM Version :" var1
echo $var1
    if [ "$var1" = 1 ]; then
        echo -e "ISNTALLING DWM....."
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
        echo -e "Done....DWM Installed"
    elif [ "$var1" = 2 ]; then
           echo -e "ISNTALLING DWM-FLEXI....."
        mkdir $HOME/Suckless && cd $HOME/Suckless
        git clone https://github.com/bakkeby/dwm-flexipatch
        git clone https://github.com/bakkeby/st-flexipatch
        git clone https://github.com/bakkeby/dmenu-flexipatch
        cd dwm-flexipatch
        make && sudo make install
        cd $HOME/Suckless/st-flexipatch
        make && sudo make install
        cd $HOME/Suckless/dmenu-flexipatch
        make && sudo make install
        cd $HOME
        cp /etc/X11/xinit/xinitrc $HOME/.xinitrc
                # {MAKE BETTER sed fundtion} > .xinitrc
        sed -i 's/exec xterm -geometry 80x66+0+0 -name login/exec dwm/g' .xinitrc
        echo -e "Done....DWM-FLEXI Installed"
        echo -e "Use patches.h and patch away!"
    elif [ "$var1" = 3 ]; then
           echo -e "ISNTALLING DWM-FLEXI....."
        mkdir $HOME/Suckless && cd $HOME/Suckless
        git clone https://github.com/LukeSmithxyz/dwm.git
        git clone https://github.com/LukeSmithxyz/st
        git clone https://github.com/bakkeby/dmenu-flexipatch
        cd dwm
        make && sudo make install
        cd $HOME/Suckless/st
        make && sudo make install
        cd $HOME/Suckless/dmenu-flexipatch
        make && sudo make install
        cd $HOME
        cp /etc/X11/xinit/xinitrc $HOME/.xinitrc
                # {MAKE BETTER sed fundtion} > .xinitrc
        sed -i 's/exec xterm -geometry 80x66+0+0 -name login/exec dwm/g' .xinitrc
        echo -e "Done....Lukes DWM Installed with Flexi Dmenu"

    elif [ "$var1" = 0 ]; then
           echo -e "NONE"
    else
	    echo -e "NOT A CHOICE"
fi
