export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="dst"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git aws docker docker-compose taskwarrior)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_GB.UTF-8

export EDITOR=vim
export VISUAL=vim
export EDITOR="$VISUAL"
export TERM=xterm-256color

# PATHZ
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export NOTES_DIR=$HOME/notes

# aliases
alias t="task"

# func
nn() {
    cd $NOTES_DIR;
	vim $NOTES_DIR/inbox/`date +%F`.md
}

nf() {
    cd $NOTES_DIR
    vim `fzf --preview="cat {}" --preview-window=right:70%:wrap`
}

nreview() {
    ranger $NOTES_DIR
}

nsync() {
    cd $NOTES_DIR;
    git add -A
    git commit -m "$USER@$HOST"
    git fetch origin
    git merge origin/main
    git push origin main
}

setxkbmap -layout gb -option ctrl:nocaps


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
