#!/usr/bin/env bash
P_DIR = `pwd`

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git emacs24 rxvt-unicode-256color i3 python-virtualenv \
 subversion mercurial bzr chromium-browse tmux mc htop firefox pavucontroll \
 parcellite volumeicon pidgin sylpheed rxvt-unicode-256color feh \
 network-manager-gnome

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
ln -s $P_DIR/git/.gitconfig  $HOME/.gitconfig

#setup Xresources
rm -f $HOME/.Xresources
ln -s $P_DIR/Xresources/.Xresources  $HOME/.Xresources
