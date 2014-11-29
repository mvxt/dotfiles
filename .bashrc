# ~/.bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

case "$TERM" in
xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
	;;
*)
	;;
esac

if [ "$color_prompt" = yes ]; then
    PS1='\W\$ '
else
    PS1='\W\$ '
fi
unset color_prompt force_color_prompt

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias open='gnome-open'
    alias logout='gnome-session-quit'
    alias c='cc -o'
    alias ed='emacs --daemon'
    alias e='emacsclient -t'
    alias ek="emacsclient -e '(kill-emacs)'"
    alias generate='rake generate'
    alias preview='rake preview'
    alias deploy='rake deploy'
    alias t='tmux'
    alias chrome='chromium-browser'
    alias word='libreoffice --writer'
    alias eclipse='/opt/eclipse/eclipse'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

TERM=xterm-256color

# User specific aliases and functions

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
