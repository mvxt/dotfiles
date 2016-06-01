
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

. ~/.bashrc

##
# Your previous /Users/mvxt_dd/.bash_profile file was backed up as /Users/mvxt_dd/.bash_profile.macports-saved_2016-06-01_at_16:02:47
##

# MacPorts Installer addition on 2016-06-01_at_16:02:47: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

