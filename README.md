# Dotfiles

Simple dotfiles setup for new machines.

## What gets installed

Everything in the Brewfile

## Installation

```bash
# Clone dotfiles
git clone git@github.com:guarani/dotfiles.git ~/.dotfiles

# Complete setup
cd ~/.dotfiles
make setup
```

## Package Management

```bash
# Install packages only
make install

# Remove packages not in Brewfile
make clean

# Force remove + reinstall everything  
make reset

# Force remove everything in the Brewfile
make nuke
```

That's it!
	

