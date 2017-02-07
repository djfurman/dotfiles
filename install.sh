#!/bin/sh

# This script installs and configures a fresh macOS
echo "Setting up this Mac..."

# Import the enviornment variables set by the user
source .env

# Homebrew - The missing package manager for macOS
## Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
## Update Homebrew package data
brew update
## Add repositories
brew tap homebrew/bundle
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap homebrew/core
brew tap homebrew/dupes
brew tap homebrew/php
brew tap homebrew/services
brew tap caskroom/versions
## Update package data from the added respositories
brew update
## Install applications and utilities (See Brewfile)
brew bundle

# Setup for development
## Make ZSH the default shell environment
chsh -s $(which zsh)
## Load the enviornment files for the new shell enviornment
source .env
## Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
## Reload the enviornment file for the (yet again) new shell
source .env
## Php Development Setup
### Install global Composer packages
/usr/local/bin/composer global require laravel/installer
/usr/local/bin/composer global require laravel/valet
## Install Python virtualenv stuff
pip install virtualenvwrapper
mkdir -p $WORKON_HOME
## Install NPM manually
curl -L https://www.npmjs.com/install.sh | sh

# Version Control - This directory isn't created by default in mac, so we can fix that
mkdir -p $HOME/Code 			## Create a Code directory
mkdir -p $HOME/Code/web			## Create a web-based code repo for Laravel Valet to dig into with any framework
mkdir -p $HOME/Code/utils 		## Create a directory to hold general utility code, I tend to write these in python
mkdir -p $HOME/Code/etl			## Create a directory to hold all of my extract/transform/load work, spiders, rippers, etc

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos

