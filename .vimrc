call pathogen#infect()
set nocompatible
set number
set ruler
syntax on

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Set encoding
set encoding=utf-8

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Default colorscheme to molokai
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set cursorline

" 4 spaces tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Move easily between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Avoid 'escaping' from home row
imap jj <Esc>
