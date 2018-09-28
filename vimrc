set nocompatible

set autoindent
set backspace=indent,eol,start
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
set updatetime=1000
set whichwrap=<,>,[,],b,s
set wildmenu

runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

syntax on
colorscheme jellybeans

autocmd FileType c,cpp,objc,objcpp setlocal cindent
autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitconfig setlocal noexpandtab
autocmd FileType make setlocal noexpandtab
autocmd FileType python setlocal shiftwidth=4 tabstop=4

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
