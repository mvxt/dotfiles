
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

. ~/.bashrc

##
# Your previous /Users/mvxt_dd/.bash_profile file was backed up as /Users/mvxt_dd/.bash_profile.macports-saved_2016-06-01_at_16:02:47
##

# MacPorts Installer addition on 2016-06-01_at_16:02:47: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Adding custom scripts to path
	export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
	export PATH="$PATH:$HOME/Custom_Scripts" # Add Custom_Scripts folder to path
	export PATH="$PATH:/opt/apache-maven-3.3.9/bin" # Add Maven bin files to path variable
	export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_92.jdk/Contents/Home" # Set JAVA_HOME

# Data Ductus sourcing ncsrc file and other stuff
	source $HOME/nso-4.2.1/ncsrc
    alias ncscli='ncs_cli -u admin'
