#!/usr/bin/env bash
P_DIR=`pwd`

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git emacs24 rxvt-unicode-256color i3 python-virtualenv \
 subversion mercurial bzr chromium-browse tmux mc htop firefox pavucontroll \
 parcellite volumeicon pidgin sylpheed rxvt-unicode-256color feh \
 network-manager-gnome lxappearance

sudo update-alternatives --config  x-www-browser
sudo update-alternatives --config  x-terminal-emulator

git clone https://github.com/beetleman/prelude.git  .emacs.d
emacs&

#setup BASH
for f in `ls -A $P_DIR/bash`
do
    rm -f $HOME/$f
    ln $P_DIR/bash/$f $HOME/$f
done
echo ". ~/.bash_config" > $HOME/.bashrc

#setup i3
rm -rf $HOME/.i3
ln -s $P_DIR/.i3 $HOME/.i3

#setup git
rm -f $HOME/.gitconfig
ln $P_DIR/git/.gitconfig  $HOME/.gitconfig

#setup Xresources
rm -f $HOME/.Xresources
ln $P_DIR/Xresources/.Xresources  $HOME/.Xresources

#setup gtk2
rm -f $HOME/.gtkrc-2.0
ln  $P_DIR/gtk/.gtkrc-2.0  $HOME/.gtkrc-2.0

#setup gtk3
mkdir -p $HOME/.config/gtk-3.0
rm -f $HOME/.config/gtk-3.0/settings.ini
ln  $P_DIR/gtk/settings.ini $HOME/.config/gtk-3.0/settings.ini
