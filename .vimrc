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

set wildignore+=*.pyc

" disable ex mode
nnoremap Q <nop>

" syntastic
" let g:syntastic_python_checkers=['python', 'pyflakes', 'pep8']
" let g:syntastic_python_pep8_args='--ignore E501,E12'
" let g:syntastic_always_populate_loc_list = 1
nnoremap <Tab> :lnext<CR>
nnoremap <S-Tab> :lprev<CR>

let g:hardtime_default_on = 0

" ctrlP for buffers
nmap ; :CtrlPBuffer<CR>

set hlsearch  " <C-L> clears it

nnoremap <Space> zz

" color scheme
colorscheme desert256

set bg=dark

set list

set encoding=utf-8
source /usr/share/vim/google/google.vim 
Glug youcompleteme-google
