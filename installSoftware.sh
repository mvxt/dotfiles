#!/bin/sh

PACKAGES=(emacs git)

sudo apt-get update # Latest package lists
sudo apt-get upgrade # Actually updates to latest software if possible
sudo apt-get install $(PACKAGES) -y # Installs all packages listed at top of file
