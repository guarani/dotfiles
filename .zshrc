# Add Homebrew to PATH (if needed)
if [[ -f "/opt/homebrew/bin/brew" ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Initialize rbenv
if command -v rbenv >/dev/null 2>&1; then
  eval "$(rbenv init - zsh)"
fi 