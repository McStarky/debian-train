#!/bin/bash
#McStarky 2018

#add repository for intel wifi drivers
echo "# Debian 9 iwlwifi repo location" >> /etc/apt/sources.list
echo "deb http://httpredir.debian.org/debian/ stretch main contrib non-free" >> /etc/apt/sources.list

#add firmware for drivers
apt update && apt install firmware-iwlwifi -y

#not sure what this does but do it
modprobe -r iwlwifi ; modprobe iwlwifi

apt upgrade -y

#Proper colors edit: needs work only changes currently working shell
#setterm -term linux -back black -fore green

#this restarts the visual GUI, allowing wireless to appear in the option menu
killall -HUP gnome-shell

#need to restart gnome, add code here
#reboot
