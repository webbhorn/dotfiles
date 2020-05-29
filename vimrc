filetype plugin indent on
syntax on

" Use vim features
set nocompatible

" Show column and row in footer
set ruler

" Show line numbers
set number

" Allow vim to recognize filetype
filetype on

" Set the correct tab setting
set tabstop=6 softtabstop=2 shiftwidth=2 noexpandtab

" `:set list` to display whitespace chars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Automatically indent while editing
set autoindent

" Automatically wrap words at 79 characters
set textwidth=79

" Recognize markdown files.
au BufRead,BufNewFile *.md set filetype=markdown

" Project-specific vim settings
set exrc

"Use jj as escape in insert mode and command line mode
inoremap jj <C-c>
cnoremap jj <C-c>

" Set mapleader
let mapleader=" "

" Navigation by visual line rather than \n line
noremap j gj
noremap k gk

" Allow changing buffers w/o saving
set hidden

" Set backup directory
set backupdir=~/tmp,/var/tmp,/tmp

"Use semi-colon to clear highlighted search results
nmap <silent> <Leader>; :noh<CR>

" Leave space below cursor when strolling
set scrolloff=3

" Underline cursor line.
set cursorline

set backspace=2 " make backspace work like most other apps
