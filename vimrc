filetype off
call pathogen#infect('C:\Users\maxim\vimfiles\bundle')
syntax on
filetype plugin indent on

set nocompatible

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim

behave mswin

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

let mapleader = ","

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"set list
"set listchars=tab:?\ ,eol:¬
set virtualedit="all"

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap jj <ESC>

nnoremap <leader>w <C-w>v<C-w>l

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

au FocusLost * :wa

nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" Disable visual bell
" http://stackoverflow.com/questions/5933568/disable-blinking-at-the-first-last-line-of-the-file
autocmd VimEnter * set t_vb=

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

nnoremap <leader><leader> <c-^>

syntax on
colorscheme desert

if has('gui_running')
    set guifont=Consolas:h12:cRUSSIAN
endif


"nnoremap - o<esc> 
"nnoremap _ O<esc> 
nnoremap <esc> :noh<return><esc>

map <f9> :wa<CR>:!python.exe pySketch.py<CR>
au FileType python setl autoindent tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd FileType python compiler pylint

"set shell=C:/Programs/MinGW/msys/1.0/bin/sh.exe
"set shellcmdflag=--login\ -c
"set shellxquote=\"
set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=5
set winminheight=5
set winheight=999

"set shell=powershell
"set shellcmdflag=-c
"set shellquote=\"
"set shellxquote=

inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

set runtimepath^=~/.vim/bundle/ctrlp.vim


