#!/bin/bash

#tmux
rm -rf ~/.tmux.conf ~/.tmux ~/.tmux-git
ln -s ~/.dotfiles/.tmux ~/.tmux
ln -s ~/.dotfiles/.tmux-git ~/.tmux-git

# vim
rm -rf ~/.vim ~/.vimrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.vim ~/.vim

uname -a | grep 'Darwin' &> /dev/null

# If this is my Mac OS X
if [ $? -eq 0 ]; then
	# tmux
	ln -s ~/.dotfiles/.tmux-mac ~/.tmux
# Else, it's my Linux running i3wm
else
	rm ~/.i3/config ~/.i3/i3blocks.conf
	# i3
	ln -s ~/.dotfiles/.i3/config ~/.i3/config
	ln -s ~/.dotfiles/.i3/i3blocks.conf ~/.i3/i3blocks.conf
	# tmux
	ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
fi


