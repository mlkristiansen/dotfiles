#!/usr/bin/env bash


echo "Setting up Ubuntu..."


echo "Checking for SSH"
if [ ! -d $HOME/.ssh/ ]; then
    echo "SSH was not found - EXIT SCRIPT!"
    exit
fi

echo "Setting right permissions for SSH"
chmod -v 700 ~/.ssh
chmod -v 600 ~/.ssh/*

## Install all hardware-fixes
echo "APPS"
find hardware/5750 -type f -print0 | xargs -0 sudo chmod 755
run-parts --report --arg=$(pwd) hardware/5750

## Install all applications in applications folder
echo "APPS"
find applications -type f -print0 | xargs -0 sudo chmod 755
run-parts --report --arg=$(pwd) applications

## Install all scripts in scripts folder
echo "SCRIPTS"
find scripts -type f -print0 | xargs -0 sudo chmod 755
run-parts --report --arg=$(pwd) scripts


##########################################################################################
## Backup:
# https://www.ostechnix.com/systemback-restore-ubuntu-desktop-and-server-to-previous-state/
##########################################################################################


#### DO THIS
# shutdown -r now
####
