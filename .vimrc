""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Must have
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()


""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""
" Enable filetype plugins
filetype plugin indent on

" The god key
let mapleader="ç"

" Multiple screens
nmap <leader>q :qall<cr>
nmap <leader>w :update<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gp :Gpush<cr>

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

""""""""""""""""""""""""""""""""
" Personalized
""""""""""""""""""""""""""""""""
" Comment the line (Python)
nmap <leader>c 0i# <esc>


""""""""""""""""""""""""""""""""
" VIM UI
""""""""""""""""""""""""""""""""
" Always show current position
set number
set numberwidth=5
set ruler

" I got the sick moves man
set relativenumber

"Always show the status line
set laststatus=2


""""""""""""""""""""""""""""""""
" NERDTree settings
""""""""""""""""""""""""""""""""
" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>
" Current file in nerdtree
map <F9> :NERDTreeFind<CR>


""""""""""""""""""""""""""""""""
" Files, backups and undo
""""""""""""""""""""""""""""""""
" I hate swapfile, so I will turn it off
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""
" Text, tab and indent related
""""""""""""""""""""""""""""""""
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set sts=4


""""""""""""""""""""""""""""""""
" CtrlP shorcut
""""""""""""""""""""""""""""""""
" Too lazy to type :CtrlP
nmap <leader>p :CtrlP<cr>


""""""""""""""""""""""""""""""""
" Vim Notes
""""""""""""""""""""""""""""""""
" Making note taking easier
nmap <leader>n :Note 
let g:notes_directories = ['~/Dropbox/notes']


""""""""""""""""""""""""""""""""
" Split navigation
""""""""""""""""""""""""""""""""
set splitbelow
set splitright
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>


""""""""""""""""""""""""""""""""
" Edit .vimrc in split
""""""""""""""""""""""""""""""""
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


""""""""""""""""""""""""""""""""
" Don't be a vimnoob
""""""""""""""""""""""""""""""""
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
