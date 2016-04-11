imap jk <Esc>
syntax on
set tabstop=2
set shiftwidth=2

set nocompatible
filetype off

set rtp+=/usr/local/lib/python3.4/dist-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()
filetype plugin indent on
