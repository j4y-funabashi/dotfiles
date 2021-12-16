export ZSH="/home/jay-robinson/.oh-my-zsh"
ZSH_THEME="dst"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git aws docker docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_GB.UTF-8

export EDITOR='nvim'
export VISUAL=nvim
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
	vim $NOTES_DIR/inbox.md
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
