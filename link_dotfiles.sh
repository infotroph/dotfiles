#!/bin/bash

# Don't run this unless you're ready to overwrite a lot of configuration files!
# Back up first, no warranties, etc etc

if [[ $OSTYPE == darwin* ]]; then ./osx; fi
chsh -s /bin/zsh

mkdir -p ~/.config/git ~/.R ~/.ssh

ln -si "$PWD"/config/git/attributes ~/.config/git/attributes
ln -si "$PWD"/config/git/ignore ~/.config/git/ignore
ln -si "$PWD"/gitconfig ~/.gitconfig
ln -si "$PWD"/"Package Control.sublime-settings" ~/"Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings"
ln -si "$PWD"/"Preferences.sublime-settings" ~/"Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
ln -si "$PWD"/profile ~/.profile
ln -si "$PWD"/R/Makevars ~/.R/Makevars
ln -si "$PWD"/Rprofile ~/.Rprofile
ln -si "$PWD"/ssh/config ~/.ssh/config
ln -si "$PWD"/tmux.conf ~/.tmux.conf
ln -si "$PWD"/zshrc ~/.zshrc
