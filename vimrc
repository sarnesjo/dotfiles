filetype plugin indent on
syntax on
colorscheme jellybeans

set autoindent
set autoread
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

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
