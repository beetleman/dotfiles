#!/usr/bin/env bash

dnf update -y

dnf install -y emacs gnome-tweak-tool emacs firefox thunderbird gimp \
    gpick zile mc smplayer vlc

dnf install -y git docker-compose docker python-devel python3-devel sbcl clisp

dnf install -y sqlite-devel zlib-devel tcl-devel tk-devel postgresql-devel

dnf group install -y \
    "C Development Tools and Libraries" \
    "Development Tools" \
    "RPM Development Tools"

curl http://folkswithhats.org/fedy-installer -o fedy-installer && \
    chmod +x fedy-installer && \
    ./fedy-installer
