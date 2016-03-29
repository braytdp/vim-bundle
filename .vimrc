set nocompatible

" Configs
filetype off
syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number

" set the runtime path to include Vundle and initialize
" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
" All of your Plugins must be added after the following line
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on


" Syntax colorscheme
colorscheme jellybeans
