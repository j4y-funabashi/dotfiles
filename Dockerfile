FROM ubuntu:20.04

ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN add-apt-repository ppa:longsleep/golang-backports
RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y \
	clang \
	g++ \
	gcc \
	rcm \
	curl \
	tmux \
	tmux-plugin-manager \
	zsh \
	golang-go

RUN \
	curl -L https://github.com/neovim/neovim/releases/download/v0.6.1/nvim.appimage --output /usr/local/bin/nvim.appimage && chmod a+x /usr/local/bin/nvim.appimage


RUN useradd -ms /bin/zsh jayr
USER jayr
WORKDIR /home/jayr

RUN \
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ADD --chown=jayr:jayr dotfiles/rcrc ./.rcrc
ADD --chown=jayr:jayr dotfiles ./dotfiles/dotfiles
RUN rcup
#RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
#RUN /usr/local/bin/nvim.appimage --appimage-extract-and-run -c ":PlugInstall"
