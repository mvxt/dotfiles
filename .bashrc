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
    alias e='emacsclient -t'
    alias ek="emacsclient -e '(kill-emacs)'"
	alias se='sudo emacs -nw'
    alias generate='rake generate'
    alias preview='rake preview'
    alias deploy='rake deploy'
    alias t='tmux'
    alias chrome='chromium-browser'
    alias word='libreoffice --writer'
    alias restart='sudo shutdown -r now'
    alias shutdown='sudo shutdown -h now'
    alias sleep='sudo pm-suspend'
    alias word='libreoffice --writer'
    alias excel='libreoffice --calc'
    alias powerpoint='libreoffice --impress'
    alias android='studio.sh'
	alias pbcopy='xclip -selection clipboard'
	alias pbpaste='xclip -selection clipboard -o'
	alias open='gnome-open'
	
# aliases for github
    alias add='git add'
    alias commit='git commit -m'
    alias push='git push'
    alias status='git status'
    alias branch='git branch'
    alias newbranch='git checkout -b'
    alias log='git log'
    alias stash='git stash'
    alias checkout='git checkout'
    alias pull='git pull'
    alias merge='git merge'
   	alias remote='git remote'
	alias clone='git clone'
	
### Added by the Heroku Toolbelt
    export PATH="/usr/local/heroku/bin:$PATH"
    export PATH="~/.npm-global/bin:$PATH"
    

### Weird GTK bug?
	export NO_AT_BRIDGE=1
