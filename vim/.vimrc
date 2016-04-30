syntax on
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'vim-scripts/L9'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/unite.vim'
"Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-scripts/OmniCppComplete'
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on  
filetype plugin on

set autoindent


autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 colorscheme gruvbox

set nu
set laststatus=2
"set shiftwidth=4
"set tabstop=4
"set softtabstop=4
set expandtab
set tabstop=4
set shiftwidth=4
"retab


hi Normal ctermbg=none

set t_Co=256
set background=dark

if !exists('g:airline_symbols')
	     let g:airline_symbols = {}
endif




let g:letirline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_tomorrow' 
let g:airline_powerline_fonts = 1


let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'



"set omnifunc=syntaxcomplete#Complete


nmap <c-s> :update<CR>
inoremap <c-s> <c-o>:update<CR>
vnoremap <c-s> <c-c>:update<CR>

nmap <c-d> :bn!<CR>
inoremap <c-d> <c-o>:bn!<CR>


nmap <c-a> :bp!<CR>
inoremap <c-a> <c-o>:bp!<CR>
vnoremap <c-a> <c-c>:bp!<CR>

nmap <c-c> i
imap <c-c> <ESC>
nmap <c-v> v 
imap <c-v> <ESC> v
vmap <c-c> y
nmap <c-b> :NERDTreeToggle<CR>
imap <c-b> <c-o>:NERDTreeToggle<CR>

nmap <c-f> p
imap <c-f> <c-o>p

nmap <silent> <c-i> :wincmd k<CR>
nmap <silent> <c-k> :wincmd j<CR>
nmap <silent> <c-j> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

imap <silent> <c-i> <c-o>:wincmd k<CR>
imap <silent> <c-k> <c-o>:wincmd j<CR>
imap <silent> <c-j> <c-o>:wincmd h<CR>
imap <silent> <c-l> <c-o>:wincmd l<CR>

vmap <silent> <c-i> <c-c>:wincmd k<CR>
vmap <silent> <c-k> <c-c>:wincmd j<CR>
vmap <silent> <c-j> <c-c>:wincmd h<CR>
vmap <silent> <c-l> <c-c>:wincmd l<CR>


nmap <silent> <c-l> :wincmd l<CR>
nmap <silent> <c-l> :wincmd l<CR>



set t_Co=256
" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode


" autoclose preview window
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

set clipboard=unnamed
set clipboard=unnamedplus


set cmdheight=1
set noshowmode
set noruler 
