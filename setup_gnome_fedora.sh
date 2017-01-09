#!/usr/bin/env bash

bash ./setup_common_fedora.sh

# install apps
sudo dnf install -y gnome-tweak-tool firefox thunderbird gimp \
     gpick
