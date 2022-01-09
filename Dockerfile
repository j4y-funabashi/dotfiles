FROM ubuntu:20.04

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y \
	curl \
	tmux \
	tmux-plugin-manager \
	zsh

RUN \
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
	curl -L https://github.com/neovim/neovim/releases/download/v0.6.1/nvim.appimage --output /usr/local/bin/nvim.appimage && chmod a+x /usr/local/bin/nvim.appimage
