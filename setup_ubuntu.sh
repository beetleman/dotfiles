#!/usr/bin/env bash
P_DIR = `pwd`

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git emacs24 rxvt-unicode-256color i3 python-virtualenv\
 subversion mercurial bzr chromium-browse tmux mc htop -y

sudo update-alternatives --config  x-www-browser
sudo update-alternatives --config  x-terminal-emulator

git clone https://github.com/beetleman/prelude.git  .emacs.d
emacs&

#setup BASH
for f in `ls -A $P_DIR/bash`
do
    ln $P_DIR/bash/$f $HOME/$f
done

echo ". ~/.bash_config" > $HOME/.bashrc
