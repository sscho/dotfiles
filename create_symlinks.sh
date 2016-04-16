#!/bin/bash


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
uname -a | grep 'shawn-home' &> /dev/null

rm ~/.i3/config ~/.i3/i3blocks.conf

# If this is my 
if [ $? -eq 1 ]; then
	echo "Setting up config files for Shawn's Home..."
	# i3
	ln -s ~/.dotfiles/.i3/config-home ~/.i3/config
	ln -s ~/.dotfiles/.i3/i3blocks.conf ~/.i3/i3blocks.conf
# Else, it's my Linux running i3wm
else
	echo "Setting up config files for Shawn's Work..."
	# i3
	ln -s ~/.dotfiles/.i3/config-work ~/.i3/config
	ln -s ~/.dotfiles/.i3/i3blocks.conf ~/.i3/i3blocks.conf
fi

# tmux
echo 'Setting up tmux...'
ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

