#!/bin/bash

defaults write com.apple.dock autohide-delay -float 0

# Translucent Hidden Apps
defaults write com.apple.dock showhidden -bool true



killall -9 Dock
