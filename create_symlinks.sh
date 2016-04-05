#!/bin/sh
rm ~/.vimrc ~/.tmux.conf ~/.tmux

uname -a | grep 'Darwin' &> /dev/null

# If this is a Mac OS X
if [ $? == 0 ]; then
	# tmux
	ln -s ~/.dotfiles/.tmux-mac.conf ~/.tmux.conf
	ln -s ~/.dotfiles/.tmux-mac ~/.tmux
else
	rm ~/.i3/config ~/.i3/i3blocks.conf
	# i3
	ln -s ~/.dotfiles/.i3/config ~/.i3/config
	ln -s ~/.dotfiles/.i3/i3blocks.conf ~/.i3/i3blocks.conf
	# tmux
	ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
	ln -s ~/.dotfiles/.tmux ~/.tmux
fi

# vim
ln -s ~/.dotfiles/.vimrc ~/.vimrc

