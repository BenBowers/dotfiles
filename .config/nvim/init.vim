
" Install plug if not already installed
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif


" Load plugins
call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
call plug#end()

" disable vi compatibility ( emulating old bugs )
set nocompatible

"  Syntax Highlighting on
syntax on
" Enable colorscheme
colorscheme nord

" Encoding type
set encoding=utf-8

" Tab size
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Tabs are spaces
set expandtab

" Line numbering
set number relativenumber

"wrap lines at 120 chars 80 is too short
set textwidth=120

" Shows matching braces
set showmatch



" Filetype detection
filetype on
filetype plugin on
filetype indent on


" Enable autocompletion
set wildmode=longest,list,full

" Enable smarindent
set smartindent
" Automaticly delete trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e
" Show status bar
set showmode
set ruler
set laststatus=2
set showcmd

" Set tabs to tabs for makefile
autocmd Filetype makefile setlocal noexpandtab
