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
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'janko-m/vim-test'
Plugin 'Yggdroot/indentLine'
Plugin 'kchmck/vim-coffee-script'

call vundle#end()
filetype plugin indent on

" COLORSTHEME
colorscheme jellybeans

" PLUGIN CONFIGS

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Vim-Test
nmap <silent> <leader>r :TestNearest<CR>
nmap <silent> <leader>R :TestFile<CR>

" Indent Lines
let g:indentLine_char = '│'

" Syntastic
noremap <leader>c :SyntasticCheck<CR>
let g:syntastic_quiet_messages = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_save = 0
let g:syntastic_check_on_w = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌ '
let g:syntastic_style_error_symbol = '⁉️ '
let g:syntastic_warning_symbol = '⚠️ '
let g:syntastic_style_warning_symbol = '💩 '

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let b:syntastic_javascript_eslint_exec = StrTrim(system('npm-which eslint'))

let g:returnApp = "iTerm"

" GENERAL CONFIG

" 80 Characters Bar
if exists('+colorcolumn')
  let &colorcolumn="80"
  highlight ColorColumn ctermbg=236
endif

" Rubocop, Reek and Ruby-Lint integration
let g:syntastic_ruby_rubocop_exec      =  "~/.rbenv/shims/rubocop"
let g:syntastic_ruby_checkers = ['rubocop', 'ruby-lint', 'reek']
let g:syntastic_ruby_exec = '~/.rbenv/shims/ruby'
let b:syntastic_mode = "passive"
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':[],'passive_filetypes': [] }

au BufNewFile,BufRead *.coffee setf coffee
au BufNewFile,BufRead *.jst.eco setf html
