#!/bin/sh

# Installs packages
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

# Installs fuzzy file finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

# Installs emacs plugins
git clone https://github.com/emacs-helm/helm.git ~/dotfiles/.emacs.d/plugins/helm
git clone https://github.com/jwiegley/emacs-async.git ~/dotfiles/.emacs.d/plugins/async
git clone --recursive https://github.com/joaotavora/yasnippet ~/dotfiles/.emacs.d/plugins/yasnippet
