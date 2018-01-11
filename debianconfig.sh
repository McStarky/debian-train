#!/bin/bash

#add repository for intel wifi drivers
echo "deb http:/httpredir.debian.org/ stretch main contrib non-free" >> /etc/apt/sources.list

#add firmware for drivers
apt update && apt install firmware-iwlwifi pv sudo

#not sure what this does but do it
modprobe -r iwlwifi ; modprobe iwlwifi

apt upgrade -y

#this restarts the visual GUI, allowing wireless to appear in the option menu
killall -HUP gnome-shell

#need to restart gnome, add code here
#reboot

