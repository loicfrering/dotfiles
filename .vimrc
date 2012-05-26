call pathogen#infect()
set nocompatible
set laststatus=2
set number
set ruler
syntax on

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Set encoding
set encoding=utf-8

" Backup and swap files
set backupdir=~/.vim/backup//
set directory=~/.vim/temp//

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Default colorscheme to solarized
set background=light
let g:solarized_termcolors=256
colorscheme solarized
set cursorline

" Whitespace stuff
set nowrap
set expandtab
set backspace=indent,eol,start
set list
set listchars=tab:\ \ ,trail:·,nbsp:_,extends:>,precedes:<

" 4 spaces tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Move easily between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Avoid 'escaping' from home row
imap jj <Esc>

" Open NERDTree if no file specified
autocmd vimenter * if !argc() | NERDTree | endif

" Powerline
let g:Powerline_symbols = 'compatible'

" CtrlP, don’t manage working directory
let g:ctrlp_working_path_mode = 0
