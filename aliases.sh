# ls aliases
    alias ll='ls -alF'
    alias lh='ls -alhF'
    alias la='ls -A'
    alias l='ls -CF'

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
    alias rep='watch -n1'
    alias r='rmtrash'
	alias py='python3'
    
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
