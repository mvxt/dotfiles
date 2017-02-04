#!/bin/bash

PACKAGES=(
    git
    tmux
    zsh
    curl
    wget
    emacs-nox
    gnome-tweak-tool
    google-chrome-stable
)

for p in $PACKAGES; do
    sudo apt-get install -y $p
    echo 'Installed ' $p
done
