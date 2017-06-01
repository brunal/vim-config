" brunal's vimrc
" setup:
" from ~, do
" $ ln -s .vim/vimrc .vimrc
" from here, do
" $ git submodule init
" $ git submodule update

source /usr/share/vim/google/google.vim

execute pathogen#infect()

let mapleader = ","

set wildignore+=*.pyc

" disable ex mode
nnoremap Q <nop>

" syntastic
let g:syntastic_python_checkers=['python', 'pyflakes', 'pep8']
let g:syntastic_python_pep8_args='--ignore E501,E12'
let g:syntastic_always_populate_loc_list = 1
nnoremap <Tab> :lnext<CR>
nnoremap <S-Tab> :lprev<CR>

" let g:hardtime_default_on = 1

" ctrlP for buffers
nmap ; :CtrlPBuffer<CR>

set hlsearch  " <C-L> clears it

nnoremap <Space> zz

" color scheme
let g:solarized_termcolors=256
colorscheme solarized

set bg=dark

set list

" Google-specific plugins
Glug piper plugin[mappings]='<leader>p'
Glug g4
Glug youcompleteme-google
Glug codefmt
Glug codefmt-google
augroup autoformat_settings
  autocmd FileType markdown AutoFormatBuffer mdformat
"  autocmd FileType gcl AutoFormatBuffer gclfmt
"  autocmd FileType borg AutoFormatBuffer gclfmt
augroup END

Glug corpweb
Glug critique
nnoremap <leader>ws :CorpWebCs <cword> <Cr>
nnoremap <leader>wf :CorpWebCsFile <Cr>

syntax on
filetype plugin indent on

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" read bashrc for !
set shellcmdflag=-ic
