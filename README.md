# Dotfiles

Simple dotfiles setup for new machines.

## What gets installed

- Python 3.x
- Tree command line tool  
- LibreOffice
- Vim configuration
- Zsh configuration

## Installation

```bash
# Clone dotfiles
git clone git@github.com:guarani/dotfiles.git ~/.dotfiles

# Install tools via Homebrew
cd ~/.dotfiles
brew bundle install

# Link configs
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc

# Reload shell
source ~/.zshrc
```

That's it!
	

