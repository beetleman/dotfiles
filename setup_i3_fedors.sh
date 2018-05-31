#!/usr/bin/bash

bash ./setup_common_fedora.sh

sudo dnf install -y i3 i3lock i3status dmenu dunst lxpolkit \
     xfce4-power-manager \
     pulseaudio-module-x11 xorg-x11-xkb-utils parcellite  \
     firewall-applet volumeicon network-manager-applet guake feh blueman\
     thunar scrot rxvt-unicode-256color \
     lightdm-gtk-greeter-settings lightdm-gtk lightdm \
     numix-gtk-theme numix-icon-theme \
     system-switch-displaymanager arandr

xfconf-query -c xfce4-session -p /general/LockCommand -s "i3lock" --create -t string

sudo dnf copr enable yaroslav/i3desktop
sudo dnf install rofi -y

sudo system-switch-displaymanager lightdm
