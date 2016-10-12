dotfiles
========

My working configuration of files. As of right now, the best configuration will be to have a base set of configuration files inside this directory and then having the configuration files in the home directories of each machine source these files. This way, we can have a single repo of base configs and then each machine can have separate additional configurations as necessary.

TODOs:
- Modify script to insert line "source ~/dotfiles/$FILE" at the beginning of relevant files
  * .profile
  * .bashrc
  * .zshrc
  * .tmux.conf
- Fortify script to safely create softlinks to dotfiles directory
- Assuming brand new machines/brand new setup, will completely wipe above files and simply replace with source statement
- For separate branches (Linux / Mac OS X) have a separate script that will install all of the required software to setup a brand new computer
  * oh-my-zsh
  * emacs, emacs-nox
  * tmux
  * git
  * java
  * go
  * rvm/ruby
  * nodejs
