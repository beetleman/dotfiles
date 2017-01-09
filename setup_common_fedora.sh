#!/usr/bin/env bash

sudo dnf update -y

bash ./install_configs.sh

curl http://folkswithhats.org/fedy-installer -o /tmp/fedy-installer && \
    chmod +x /tmp/fedy-installer && \
    sudo /tmp/fedy-installer

sudo dnf install -y terminus-fonts \
     aspell-pl hunspell-pl hunspell-en aspell-en \
     emacs adobe-source-code-pro-fonts zsh git gitflow zile \
     vlc smplayer rxvt-unicode-256color \
     tmux util-linux-user \
     docker docker-compose \
     zlib-devel bzip2 bzip2-devel readline-devel sqlite \
     sqlite-devel openssl-devel \
     python-devel python3-devel \
     sbcl python3 \
     @c-development @java @java-development \
     @development-tools @development-libs

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

chsh -s `which zsh`
