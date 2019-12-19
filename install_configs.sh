#!/usr/bin/env bash
function install_conf {
    rm ~/$2 -rf
    ln -s `pwd`/$1/$2 ~/
}

rm ~/.config/i3 -rf
ln -s `pwd`/i3 ~/.config/i3

install_conf Xresources .Xresources
install_conf Xresources .Xresources.themes

rm ~/.config/picom.conf -rf
ln -s `pwd`/picom.conf ~/.config/picom.conf

# git
install_conf git .gitconfig
install_conf git .gitignore_global
