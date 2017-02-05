#!/bin/sh
##############################################
# Runs a bunch of administrative tasks
#  such as installing packages/dependencies
#  as well as setting up other critical items
#  like configuration files
##############################################

#######################
## Installs packages ##
#######################
PACKAGES=(
    git # Git version control
    tmux # Terminal multiplexor
    zsh # Zsh
    curl # Curl utility
    wget # Wget utility
    emacs-nox # Emacs without X windows
    gnome-tweak-tool # For tweaking stuff
    unity-tweak-tool # For tweaking stuff
    google-chrome-stable # Google Chrome
    ubuntu-restricted-extras # Media codecs
    redshift # Like f.lux
    htop # See core processing
    vagrant # Install vagrant for VM & testing
    xclip # Linux equivalent of pbcopy/pbpaste
    bleachbit # Linux equivalent of CCleaner
    wine-stable # Cleanly integrate windows apps into Linux
)

for p in $PACKAGES; do
    sudo apt-get install -y $p
    echo 'Installed ' $p
done

# Auto-load redshift on startup
sudo echo << EOF > /etc/init.d/redshift.sh
#!/bin/sh
echo "Starting redshift"
redshift
EOF

sudo chmod +x /etc/init.d/redshift.sh
sudo update-rc.d /etc/init.d/redshift.sh defaults 100

################################
## Installs fuzzy file finder ##
################################
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

############################
## Installs emacs plugins ##
############################
git clone https://github.com/emacs-helm/helm.git ~/dotfiles/.emacs.d/plugins/helm
git clone https://github.com/jwiegley/emacs-async.git ~/dotfiles/.emacs.d/plugins/async
git clone --recursive https://github.com/joaotavora/yasnippet ~/dotfiles/.emacs.d/plugins/yasnippet

cd ~/dotfiles/.emacs.d/plugins/helm && make

#############################
## Create Dotfile Symlinks ##
#############################
# TODO: symlink all config and rc files in ~/ and ~/.config to dotfiles
# .config/redshift.conf
# .config/terminator/config

#####################################
## Install Mac OS Theme for Ubuntu ##
#####################################
sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt-get update
sudo apt-get install macbuntu-os-icons-lts-v8
sudo apt-get install macbuntu-os-ithemes-lts-v8

##################################
## Miscellaneous Administrative ##
##################################
# Disables guest sessions
sudo sh -c "echo 'allow-guest=false' >> /usr/share/lightdm/lightdm.conf.d/50-ubuntu.conf"

# Show name in top right panel
gsettings set com.canonical.indicator.session show-real-name-on-panel true

# One-click minimize on tray icons
gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true
