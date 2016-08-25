set nocompatible

" CONFIG
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
set autoindent

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

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
Plugin 'Yggdroot/indentLine'

call vundle#end()
filetype plugin indent on

" COLORSTHEME
colorscheme jellybeans

" PLUGIN CONFIGS

" Vim-Test
nmap <silent> <leader>r :TestNearest<CR>
nmap <silent> <leader>R :TestFile<CR>

" Indent Lines
let g:indentLine_char = '│'

" GENERAL CONFIG

" 80 Characters Bar
if exists('+colorcolumn')
  let &colorcolumn="80"
  highlight ColorColumn ctermbg=236
endif
