

syntax on

" 
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on  
set nu
set laststatus=2

"let g:airline#extensions#tabline#enabled = 1




let g:airline_theme='base16' 
"let g:airline_theme='wombat'



hi Normal ctermbg=none

set t_Co=256
set shiftwidth=4
set tabstop=4
set softtabstop=4
set background=dark
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	     let g:airline_symbols = {}
endif

"unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'

let g:airline_symbols.branch = '⎇'


let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
"
" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''
"let g:ycm_autoclose_preview_window_after_insertion = 1 
"let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
colorscheme gruvbox
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set guifont=DejaVu\ Sans:s12



nmap <c-s> :update<CR>
imap <c-s> <c-o>:update<CR>
vmap <c-s> <c-c>:update<CR>
set t_Co=256
" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
