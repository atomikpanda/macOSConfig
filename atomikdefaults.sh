#!/bin/bash

# Finder
source defaults/finder.sh

source defaults/dock.sh

# Screen Shots location
defaults write com.apple.screencapture location ~/Desktop/ScreenShots
killall -9 SystemUIServer

# Unhide Library Folder
chflags nohidden ~/Library/

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Key Repeat Speed
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2
# Key Alternate Popups
defaults write -g ApplePressAndHoldEnabled -bool false
echo "Please logout to apply key repeat speed."

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false


# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

