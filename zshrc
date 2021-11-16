export ZSH="/home/jay-robinson/.oh-my-zsh"
ZSH_THEME="dst"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$PATH:/usr/local/go/bin:~/go/bin
export TERM=xterm-256color

# export LANG=en_US.UTF-8

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
