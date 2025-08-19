.PHONY: install clean reset nuke setup

install:
	@command -v brew >/dev/null 2>&1 || /bin/bash -c "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	@eval "$$(/opt/homebrew/bin/brew shellenv)"
	@echo 'eval "$$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
	@brew bundle install

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
