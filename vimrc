" brunal's vimrc
" setup:
" from ~, do
" $ ln -s .vim/vimrc .vimrc
" from here, do
" $ git submodule init
" $ git submodule update

execute pathogen#infect()

syntax on
filetype plugin indent on

let mapleader = ","

" disable ex mode
nnoremap Q <nop>

set bg=dark

" syntastic
let g:syntastic_python_checkers=['python', 'pyflakes', 'pep8']
let g:syntastic_python_pep8_args='--ignore E501,E12'

let g:hardtime_default_on = 1
