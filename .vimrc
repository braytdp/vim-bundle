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
set statusline=%f\ -\ Column:\ %v\ Line:\ %l/%L

" set the runtime path to include Vundle and initialize
" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
" All of your Plugins must be added after the following line
call vundle#begin()

" PLUGINS

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-rails'
Plugin 'ervandew/supertab'
Plugin 'valloric/youcompleteme'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on

" Syntax colorscheme
colorscheme jellybeans

" Syntastic configs
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
