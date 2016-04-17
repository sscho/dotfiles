imap jk <Esc>
syntax on
set tabstop=2
set shiftwidth=2

set nocompatible
filetype off

let WORK=$WORK
if WORK == '1'
	set rtp+=/home/scho/.local/lib/python3.4/site-packages/powerline/bindings/vim
else
	set rtp+=/usr/local/lib/python3.4/dist-packages/powerline/bindings/vim
endif

set laststatus=2
set t_Co=256

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()
filetype plugin indent on
