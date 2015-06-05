set nocompatible

set autoindent
set backspace=indent,eol,start
set cindent
set cinoptions=(0,g0
set completeopt=longest,menu
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set incsearch
set nowrap
set number
set ruler
set shiftwidth=2
set showcmd
set smartcase
set smartindent
set smarttab
set tabstop=2
set whichwrap=<,>,[,],b,s
set wildmenu

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on
colorscheme jellybeans

autocmd FileType make setlocal noexpandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4
