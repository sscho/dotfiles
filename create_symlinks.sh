#!/bin/bash

# Check to see if this is a Linux Platform
uname -a | grep 'Linux|Darwin' &> /dev/null

echo 'Linking tmux files...'
# tmux
rm -rf ~/.tmux.conf ~/.tmux ~/.tmux-git
ln -s ~/.dotfiles/.tmux ~/.tmux
ln -s ~/.dotfiles/.tmux-git ~/.tmux-git

echo 'Linking vim files'
# Vim
rm -rf ~/.vim ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.vim ~/.vim

# Linking fonts...
echo 'Linking fonts'
rm -rf ~/.fonts
ln -s ~/.dotfiles/.fonts ~/.fonts

# Check to see that this is a Linux platform
uname -a | grep 'Linux|Darwin' &> /dev/null

# If this is my Mac OS X
if [ $? -eq 0 ]; then
	# tmux
	ln -s ~/.dotfiles/.tmux-mac ~/.tmux
# Else, it's my Linux running i3wm
else
	echo 'Setting up i3'
	rm ~/.i3/config ~/.i3/i3blocks.conf
	# i3
	ln -s ~/.dotfiles/.i3/config ~/.i3/config
	ln -s ~/.dotfiles/.i3/i3blocks.conf ~/.i3/i3blocks.conf
	echo 'Setting up tmux...'
	# tmux
	ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
fi


