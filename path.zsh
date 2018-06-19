# Start from the default
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"

# Load Node global installed binaries
export PATH="$HOME/.npm-packages/bin:$PATH"

# Load Python3 global installed binaries
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# Load composer globally installed binaries
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Use project specific binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# Load custom commands
# Disabled this because I have no custom binaries at the moment.
# export PATH="$DOTFILES/bin:$PATH"

# Local bin directories before anything else
export PATH="/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/local/sbin:$PATH"
