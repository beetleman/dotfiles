#!/usr/bin/env bash

sudo dnf update -y

bash ./install_configs.sh

#curl https://www.folkswithhats.org/installer -o /tmp/installer && \
#    chmod +x /tmp/installer && \
#    sudo /tmp/installer

sudo dnf install -y terminus-fonts \
     aspell-pl hunspell-pl hunspell-en aspell-en \
     emacs zsh git gitflow zile \
     vlc gnome-mpv \
     tmux util-linux-user \
     docker \
     zlib-devel bzip2 bzip2-devel readline-devel sqlite \
     sqlite-devel openssl-devel \
     python-devel python3-devel \
     sbcl python3 \
     @c-development @java @java-development \
     @development-tools @development-libs

chsh -s `which zsh`
