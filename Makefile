.PHONY: install clean reset nuke setup test

# Install all packages from Brewfile
install:
	brew bundle install

# Remove packages not in Brewfile (interactive)
clean:
	brew bundle cleanup

# Force remove packages not in Brewfile + reinstall everything
reset:
	brew bundle cleanup --force
	brew bundle install

# Nuclear option: remove ALL packages in Brewfile
nuke:
	@echo "🗑️  Removing all packages..."
	-brew bundle list --brews | xargs brew uninstall
	-brew bundle list --casks | xargs brew uninstall --cask
	@echo "✅ Nuke complete!"

# Complete setup: install packages + link dotfiles
setup: install
	ln -sf ~/.dotfiles/.zshrc ~/.zshrc
	ln -sf ~/.dotfiles/.vimrc ~/.vimrc
	source ~/.zshrc 