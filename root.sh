#!/bin/sh

#change repositori
mv /etc/pacman.d /etc/pacman.d.bak
mv /etc/pacman.conf /etc/pacman.conf.bak
cp -R ./pacman.d /etc/
cp ./pacman.conf /etc/
pacman -Syyu
pacman -Sy wget unzip yay
wget 'https://master.dl.sourceforge.net/project/themes-archcraft/themes.zip'
wget 'https://master.dl.sourceforge.net/project/themes-archcraft/icons.zip'
wget 'https://master.dl.sourceforge.net/project/themes-archcraft/fonts.zip'
unzip themes.zip -d /usr/share/
unzip icons.zip -d /usr/share/
unzip fonts.zip -d /usr/share/
yay -S sddm betterlockscreen archcraft-fluxbox