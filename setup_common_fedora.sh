#!/usr/bin/env bash

sudo dnf update -y

bash ./install_configs.sh
F=`rpm -E %fedora`

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-${F}.noarch.rpm \
     https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-${F}.noarch.rpm \
     http://repo.linrunner.de/fedora/tlp/repos/releases/tlp-release.fc${F}.noarch.rpm

sudo dnf install -y terminus-fonts \
     aspell-pl hunspell-pl hunspell-en aspell-en \
     emacs zsh git gitflow zile owncloud-client\
     gstreamer1-plugins-base gstreamer1-plugins-good gstreamer1-plugins-ugly \
     gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld \
     gstreamer1-plugins-bad-free-extras ffmpeg \
     p7zip p7zip-plugins unrar freetype-freeworld \
     vlc smplayer \
     tmux util-linux-user \
     docker \
     zlib-devel bzip2 bzip2-devel readline-devel sqlite \
     sqlite-devel openssl-devel python-devel python3-devel python3 \
     tlp akmod-tp_smapi akmod-acpi_call kernel-devel \
     @c-development @java @java-development \
     @development-tools @development-libs \


chsh -s `which zsh`
