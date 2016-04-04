set nocompatible

" Configs
filetype off
syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set hlsearch
set ignorecase
set smartcase
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
set incsearch

" set the runtime path to include Vundle and initialize
" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
" All of your Plugins must be added after the following line
call vundle#begin()

" PLUGINS

" Vundle
Plugin 'VundleVim/Vundle.vim'

" SnipMate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'tomtom/tcomment_vim'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on


" Syntax colorscheme
colorscheme jellybeans
