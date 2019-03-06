#!/bin/bash

ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -s $HOME/dotfiles/.gitignore_global $HOME/.gitignore_global
ln -s $HOME/dotfiles/.gemrc $HOME/.gemrc
ln -s $HOME/dotfiles/.rspec $HOME/.rspec
ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/.pryrc $HOME/.pryrc
ln -s $HOME/dotfiles/.mailcap $HOME/.mailcap
ln -s $HOME/dotfiles/.oh-my-zsh/themes/fino.zsh-theme $HOME/.oh-my-zsh/themes/fino.zsh-theme
ln -s $HOME/dotfiles/.git-commit-template.txt $HOME/.git-commit-template.txt


# careful -f argument will override your existing sublime text 3 settings.
ln -s -f $HOME/dotfiles/sublime/Preferences.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -s -f $HOME/dotfiles/sublime/Package\ Control.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
ln -s -f $HOME/dotfiles/sublime/Default\ \(OSX\).sublime-keymap $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
ln -s -f $HOME/dotfiles/sublime/SublimeLinter.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/SublimeLinter.sublime-settings
ln -s -f $HOME/dotfiles/sublime/Autoprefixer.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Autoprefixer.sublime-settings
