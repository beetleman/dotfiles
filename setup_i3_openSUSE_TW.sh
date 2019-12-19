#!/usr/bin/env bash

bash ./install_configs.sh

sudo zypper dup -y
sudo zypper in -y -t pattern xfce
sudo zypper in -y \
     i3 python3-py3status mate-screenshot picom nitrogen \
     parcellite pasystray redshift-gtk rofi arandr
