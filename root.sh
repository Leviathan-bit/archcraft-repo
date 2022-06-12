#!/bin/sh

#change repositori
mv /etc/pacman.d /etc/pacman.d.bak
mv /etc/pacman.conf /etc/pacman.conf.bak
cp -R ./pacman.d /etc/
cp ./pacman.conf /etc/
pacman -Syyu
pacman -Sy wget unzip yay alacritty
wget -O themes.zip https://sourceforge.net/projects/themes-archcraft/files/themes.zip/download
wget -O icons.zip https://sourceforge.net/projects/themes-archcraft/files/icons.zip/download
wget -O fonts.zip https://sourceforge.net/projects/themes-archcraft/files/fonts.zip/download
unzip themes.zip -d /usr/share/
unzip icons.zip -d /usr/share/
unzip fonts.zip -d /usr/share/
yay -S sddm betterlockscreen archcraft-fluxbox
systemctl enable sddm