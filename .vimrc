set nocompatible
set laststatus=2
set number
set ruler
syntax on

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/molokai'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/ZoomWin'
Bundle 'Lokaltog/vim-powerline'
Bundle 'edsono/vim-matchit'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-git'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/syntastic'
Bundle 'vim-scripts/VimClojure'
Bundle 'beyondwords/vim-twig'
Bundle 'sjl/clam.vim'
Bundle 'groenewege/vim-less'
Bundle 'nono/vim-handlebars'
Bundle 'vim-scripts/nginx.vim'
Bundle 'majutsushi/tagbar'
Bundle 'godlygeek/tabular'
Bundle 'garbas/vim-snipmate'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'rust-lang/rust.vim'
Bundle 'derekwyatt/vim-scala'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'benmills/vimux'
Bundle 'mileszs/ack.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'elixir-lang/vim-elixir'
Bundle 'tpope/vim-endwise'
Bundle 'mxw/vim-jsx'
Bundle 'keith/swift.vim'
Bundle 'cespare/vim-toml'

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Set encoding
set encoding=utf-8

" Backup and swap files
set backupdir=~/.vim/backup//
set directory=~/.vim/temp//

" More accessible leader key
let mapleader = ','

" Markdown shortcuts
nnoremap <Leader>= yypVr=o<Esc>
nnoremap <Leader>- yypVr-o<Esc>

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <space> :nohlsearch<cr>

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Default colorscheme to solarized
set background=light
let g:solarized_termcolors=256
colorscheme solarized
highlight clear SignColumn
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

" Powerline
let g:Powerline_symbols = 'compatible'

" CtrlP
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_working_path_mode = 0 " don’t manage working directory
let g:ctrlp_switch_buffer = 'et' " don't jump if the buffer is not in the current tab

" Vimux
map <Leader>vt :call VimuxRunCommand("clear; make test")<CR>
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vz :call VimuxZoomRunner()<CR>
