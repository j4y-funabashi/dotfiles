export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="dst"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_GB.UTF-8

export EDITOR=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"

# PATHZ
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

export DENO_INSTALL="/home/jay-robinson/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

## config
source "$HOME/.zsh/gtd.zsh"
[ -f "$HOME/.zsh/secrets.zsh" ] && source "$HOME/.zsh/secrets.zsh"
[ -f "$HOME/.zsh/work.zsh" ] && source "$HOME/.zsh/work.zsh"

# aliases
alias vim="nvim"
alias vi="nvim"
alias t="todo.sh -Ant"
alias bat="batcat"

setxkbmap -layout gb -option ctrl:nocaps

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
