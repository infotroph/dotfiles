#!/bin/bash

## Systemwide 

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Faster trackpad scrolling
# (range is apparently 0-3)
defaults write NSGlobalDomain com.apple.trackpad.scaling -int 3

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

## Dock and all its unlikely child processes

# hide dock when cursor not over it
defaults write com.apple.Dock autohide -bool TRUE

# Hot corner: start screen saver when cursor to bottom right screen corner 
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0


## Finder

# allow quitting Finder
defaults write com.apple.finder QuitMenuItem -bool true

# Don't warn when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true


## Safari

# Make Find match substrings instead of whole words
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Turn on Do Not Track
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# Enable developer menu and web inspector
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Don't hide URLs
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Don't open """safe""" filetypes after download
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

## Tweetbot

# Skip sloooow t.co redirection
defaults write com.tapbots.TweetbotMac OpenURLsDirectly -bool TRUE


## Sublime Text

sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
