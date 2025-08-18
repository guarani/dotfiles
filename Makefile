.PHONY: install clean reset nuke setup

install:
	@command -v brew >/dev/null 2>&1 || /bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	@eval "$$(brew --prefix)/bin/brew shellenv" && brew bundle install

clean:
	brew bundle cleanup

reset:
	brew bundle cleanup --force
	brew bundle install

nuke:
	-brew bundle list --brews | xargs brew uninstall
	-brew bundle list --casks | xargs brew uninstall --cask
	-rm ~/.zshrc ~/.vimrc

setup: install
	ln -sf ~/.dotfiles/.zshrc ~/.zshrc
	ln -sf ~/.dotfiles/.vimrc ~/.vimrc
	. ~/.zshrc
