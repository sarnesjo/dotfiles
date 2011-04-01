set nocompatible                " don't behave like vi

set encoding=utf-8              " use utf-8 in Vim
set fileencodings=utf-8,latin1  " automatically detect utf-8 and latin1

set autoindent                  " automatically indent new lines...
set smartindent                 " ... and be clever about it
set expandtab                   " expand tabs to spaces...
set smarttab                    " ... even when indenting
set shiftwidth=2                " indent using 2 spaces...
set tabstop=2                   " ... because a tab is 2 spaces

set number                      " display line numbers
set ruler                       " display position of the cursor

set whichwrap=<,>,[,],b,s       " allow left/right, backspace and space to move the cursor to the previous/next line
set backspace=indent,eol,start  " allow backspacing over indent, end of line and start of insert

set ignorecase                  " ignore case when searching...
set smartcase                   " ... unless pattern contains uppercase characters
set incsearch                   " show match for partly typed search
set hlsearch                    " highlight matches

set showcmd                     " show typed keys in the status line
set wildmenu                    " show match for partly typed commands in the command line

set completeopt=longest,menu    " complete to longest common prefix and show a menu

syntax on                       " use syntax highlighting

colorscheme desert              " this colorscheme works well both in a GUI and a terminal

" set omnifunc based on filetype
autocmd FileType c          set omnifunc=ccomplete#Complete
autocmd FileType css        set omnifunc=csscomplete#CompleteCSS
autocmd FileType html       set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php        set omnifunc=phpcomplete#CompletePHP
autocmd FileType python     set omnifunc=pythoncomplete#Complete
autocmd FileType xml        set omnifunc=xmlcomplete#CompleteTags

" be extra clever when indenting C-like code
autocmd FileType c      set cindent
autocmd FileType cpp    set cindent
autocmd FileType objc   set cindent
autocmd FileType objcpp set cindent

" makefiles need tabs
autocmd FileType make   set noexpandtab

" use 4 spaces for each level of indent for Python code
autocmd FileType python set shiftwidth=4 tabstop=4

" search-and-replace macros
map <S-f> :%s//gc<Left><Left><Left>
map <S-g> :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
map <S-h> :%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>
