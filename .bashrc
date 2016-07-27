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

    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'

export CLICOLOR=1
export TERM=xterm-256color

# User specific aliases and functions
    alias c='cc -o'
    alias ed='emacs --daemon'
    alias se='SUDO_EDITOR="emacsclient" sudo -e'
    alias e='emacsclient -t'
    alias ek="emacsclient -e '(kill-emacs)'"
    alias generate='rake generate'
    alias preview='rake preview'
    alias deploy='rake deploy'
    alias t='tmux'
    alias restart='sudo shutdown -r now'
    alias shutdown='sudo shutdown -h now'
    alias android='studio.sh'
    alias r='rmtrash'
	
# aliases for github
    alias add='git add'
    alias commit='git commit -m'
    alias push='git push'
    alias status='git status'
    alias branch='git branch'
    alias newbranch='git checkout -b'
    alias log='git log'
    alias stash='git stash'
    alias pop='git stash pop'
    alias checkout='git checkout'
    alias pull='git pull'
    alias fetch='git fetch'
    alias merge='git merge'
    alias remote='git remote'
    alias clone='git clone'

# Adding custom scripts to path
	export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
	export PATH="$PATH:$HOME/Custom_Scripts" # Add Custom_Scripts folder to path
	export PATH="$PATH:/opt/apache-maven-3.3.9/bin" # Add Maven bin files to path variable
	export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_92.jdk/Contents/Home" # Set JAVA_HOME

# Data Ductus sourcing ncsrc file
	source $HOME/nso-4.1.2/ncsrc
