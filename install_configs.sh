#!/usr/bin/env bash
function install_conf {
    rm ~/$2 -rf
    ln -s `pwd`/$1/$2 ~/
}

install_conf i3 .i3
install_conf Xresources .Xresources
install_conf Xresources .Xresources.themes

# git
install_conf git .gitconfig
install_conf git .gitignore_global

# install oh-my-shell
install_conf zsh .oh-my-zsh
install_conf zsh .zshrc
