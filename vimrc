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

" neomake
autocmd BufWritePost *.py Neomake
" let g:neomake_python_enabled_makers=['pyflakes', 'pep8', 'pylint']  " 'python' missing
let g:neomake_python_pep8_maker = {
	\ 'args': ['--ignore', 'E501,E12'],
	\ }

let g:neomake_error_sign = {
	\ 'text': '>>',
	\ 'texthl': 'ErrorMsg',
	\ }
hi MyWarningMsg ctermbg=Yellow ctermfg=0
let g:neomake_warning_sign = {
	\ 'text': '>>',
	\ 'texthl': 'MyWarningMsg',
	\ }


nnoremap <Tab> :lnext<CR>
nnoremap <S-Tab> :lprev<CR>

let g:hardtime_default_on = 1

" ctrlP for buffers
nmap ; :CtrlPBuffer<CR>

set hlsearch  " <C-L> clears it

nnoremap <Space> zz

" color scheme
let g:solarized_termcolors=256
colorscheme solarized

set bg=dark

set list
