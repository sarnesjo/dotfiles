set nocompatible                " don't behave like vi

set encoding=utf-8              " use utf-8 in Vim

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

" enable pathogen
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" set colorscheme
colorscheme jellybeans

" filetype settings
autocmd FileType c,cpp,objc,objcpp setlocal cindent omnifunc=ccomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType make setlocal noexpandtab
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete shiftwidth=4 tabstop=4
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" search-and-replace macros
map <S-f> :%s//gc<Left><Left><Left>
map <S-g> :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
map <S-h> :%s/\<<C-r><C-w>\>/<C-r><C-w>/gc<Left><Left><Left>
