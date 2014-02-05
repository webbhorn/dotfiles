" golang syntax highlighting
" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
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

" Set colorscheme and font
colorscheme desert
set guifont=Consolas\ 14

" Set the correct tab setting
set tabstop=8 softtabstop=2 shiftwidth=2 noexpandtab

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
set secure
