#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi

fi

# Install homebrew packages
brew install grc coreutils spark

# Install Cask
brew install caskroom/cask/brew-cask

# Install native apps
brew cask install the-unarchiver
brew cask install bettertouchtool
brew cask install dropbox

brew cask install atom
brew cask install sequel-pro
brew cask install kitematic
# brew cask install sourcetree
brew cask install github-desktop

brew cask install google-chrome
brew cask install firefox

# Fonts
brew tap caskroom/fonts
brew cask install font-ubuntu

exit 0
