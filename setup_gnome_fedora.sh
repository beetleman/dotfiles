#!/usr/bin/env bash

dnf update -y

# install additional repos and feedy
curl http://folkswithhats.org/fedy-installer -o fedy-installer && \
    chmod +x fedy-installer && \
    ./fedy-installer


# install apps
dnf install -y emacs gnome-tweak-tool emacs firefox thunderbird gimp \
    gpick zile mc smplayer vlc tmux

# install programing stuff
dnf install -y git docker-compose docker python-devel python3-devel sbcl clisp zsh

dnf group install -y \
    "C Development Tools and Libraries" \
    "Development Tools" \
    "RPM Development Tools"

# install libs
dnf install -y sqlite-devel zlib-devel tcl-devel tk-devel postgresql-devel

# install configs
bash ./install_configs.sh
