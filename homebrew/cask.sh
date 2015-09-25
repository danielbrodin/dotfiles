#!/bin/sh
#
# Homebrew Cask
#
# This installs Homebrew Cask which lets you install apps with homebrew

# Install Cask
echo " Installing Homebrew Cask for you."
brew install caskroom/cask/brew-cask

# Install native apps
echo " Installing applications."
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

# Install Fonts
echo " Installing fonts."
brew tap caskroom/fonts
brew cask install font-ubuntu