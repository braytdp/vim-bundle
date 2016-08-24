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
set laststatus=2
set backspace=2

" set the runtime path to include Vundle and initialize
" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
" All of your Plugins must be added after the following line
call vundle#begin()

" PLUGINS

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'kien/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'janko-m/vim-test'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on

" Syntax colorscheme
colorscheme jellybeans

nmap <silent> <leader>r :TestNearest<CR>
nmap <silent> <leader>R :TestFile<CR>
