DOT_FOLDER = $(shell pwd)

.PHONY: all
all: clean install

.PHONY: install
install: zgen link
	zsh ~/.zshrc
	vim +PlugInstall! +qa

.PHONY: macos
macos:
	sh "$(DOT_FOLDER)/.macos"

.PHONY: brew
brew:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew bundle

.PHONY: zgen
zgen:
	git clone https://github.com/rslindee/zgen.git ~/.zgen

.PHONY: link
link:
	ln -sfnv "$(DOT_FOLDER)/vim" ~/.vim
	ln -sfnv "$(DOT_FOLDER)/zsh" ~/.zsh
	ln -sfnv "$(DOT_FOLDER)/dot/gitconfig" ~/.gitconfig
	ln -sfnv "$(DOT_FOLDER)/dot/ideavimrc" ~/.ideavimrc
	ln -sfnv "$(DOT_FOLDER)/dot/vimrc" ~/.vimrc
	ln -sfnv "$(DOT_FOLDER)/dot/zshrc" ~/.zshrc

.PHONY: clean
clean:
	rm -rf ~/.zgen
