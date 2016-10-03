# ~/.bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

case "$TERM" in
xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: $PS1"
	;;
*)
	;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='\W\$ '
else
    PS1='\W\$ '
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

unset color_prompt force_color_prompt

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export CLICOLOR=1
export TERM=xterm-256color

source ~/dotfiles/aliases.sh

# Adding custom scripts to path
	export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
	export PATH="$PATH:$HOME/Custom_Scripts" # Add Custom_Scripts folder to path
	export PATH="$PATH:/opt/apache-maven-3.3.9/bin" # Add Maven bin files to path variable
	export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_92.jdk/Contents/Home" # Set JAVA_HOME

# Data Ductus sourcing ncsrc file and other stuff
	source $HOME/nso-4.2.1/ncsrc
    alias ncscli='ncs_cli -u admin'
