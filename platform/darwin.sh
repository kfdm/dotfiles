#!/bin/bash

set -e

echo 'OSX Setup'

# Keep us from editing the dock too much
defaults write com.apple.dock position-immutable 1
defaults write com.apple.dock size-immutable 1
defaults write com.apple.dock contents-immutable 1
killall Dock

# Make itunes work how we want
defaults write com.apple.iTunes disablePing 1
defaults write com.apple.iTunes disablePodcasts 1
defaults write com.apple.iTunes disableRadio 1
killall iTunes || true

defaults write com.apple.Preview NSQuitAlwaysKeepsWindows 0
defaults write com.apple.TextEdit NSQuitAlwaysKeepsWindows 0

defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Use AirDrop over every interface
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1
