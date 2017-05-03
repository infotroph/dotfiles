#!/bin/bash

# Don't run this unless you're ready to overwrite a lot of configuration files!
# Back up first, no warranties, etc etc

if [[ $OSTYPE == darwin* ]]; then ./osx; done

mkdir -p ~/.config/git .R .ssh

ln -s "$PWD"/config/git/attributes ~/.config/git/attributes
ln -s "$PWD"/config/git/ignore ~/.config/git/ignore
ln -s "$PWD"/gitconfig ~/.gitconfig
ln -s "$PWD"/"Package Control.sublime-settings" ~/"Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings"
ln -s "$PWD"/"Preferences.sublime-settings" ~/"Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
ln -s "$PWD"/profile ~/.profile
ln -s "$PWD"/R/Makevars ~/.R/Makevars
ln -s "$PWD"/Rprofile ~/.Rprofile
ln -s "$PWD"/ssh/config ~/.ssh/config
ln -s "$PWD"/tmux.conf ~/.tmux.conf
ln -s "$PWD"/zshrc ~/.zshrc
