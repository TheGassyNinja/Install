#!/bin/bash
#COMMENT

echo -e "(1) MYpersonal .config - (2) Your .config -  (0) None"
read -p "CHOOSE :" var1
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
