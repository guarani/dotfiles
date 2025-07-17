.PHONY: install clean reset nuke setup

install:
	brew bundle install

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
	source ~/.zshrc