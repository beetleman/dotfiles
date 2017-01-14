#!/usr/bin/bash

bash ./setup_common_fedora.sh

rofi=http://mirror.yandex.ru/fedora/russianfedora/russianfedora/free/fedora/development/25/x86_64/os/rofi-1.2.0-2.fc25.x86_64.rpm


sudo dnf install -y i3 i3lock i3status dmenu dunst lxpolkit \
     xfce4-power-manager $rofi light-locker \
     pulseaudio-module-x11 xorg-x11-xkb-utils parcellite  \
     firewall-applet volumeicon network-manager-applet guake feh blueman \
