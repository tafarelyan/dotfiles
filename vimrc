""""""""""""""""""""""""""""""""
" Plug 
"""""""""""""""""""""""""""""""" 
" auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'vim-airline/vim-airline'
Plug 'chrisbra/csv.vim'
Plug 'scrooloose/nerdcommenter'

" Git workflow
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Colorschemes
Plug 'altercation/vim-colors-solarized'

" Initialize plugin system
call plug#end()


""""""""""""""""""""""""""""""""
" General 
"""""""""""""""""""""""""""""""" 
" The god key
let mapleader=','

set nocompatible " Use Vim settings, rather than Vi settings 
set backspace=2 " Backspace deletes like most programs in insert mode

" General shortcuts
nmap <leader>q :qall<cr>
nmap <leader>w :update<cr>

" PEP 8 Python
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

" Always show current position
set number
set numberwidth=5
set ruler

" I got the sick moves man
set relativenumber

" Yank with clipboard
set clipboard+=unnamed

"Encoding
set encoding=utf-8

" Files, backups and undo
set nobackup
set nowritebackup
set noswapfile

" Solarized theme
set background=dark
silent! colorscheme solarized
syntax on
set t_Co=32


""""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""""
" Fugitive shortcuts
nmap <leader>gs :Gstatus<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gp :Gpush<cr>

" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>

" Current file in nerdtree
map <F9> :NERDTreeFind<CR>

" Too lazy to type :CtrlP
nmap <leader>p :CtrlP<cr>

" Ignore irrelevant folders in CtrlP
set wildignore+=*.pyc,venv,*.png
let g:ctrlp_custom_ignore = '\v[\/]\.git$'

" Set laststatus for vim-airline
set laststatus=2

" NERDCommenter config
let g:NERDSpaceDelims = 2


""""""""""""""""""""""""""""""""
" Filetype specific changes
""""""""""""""""""""""""""""""""
autocmd filetype html,css,htmldjango,javascript set shiftwidth=2 tabstop=2 softtabstop=2


""""""""""""""""""""""""""""""""
" Quick edit .vimrc
""""""""""""""""""""""""""""""""
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


""""""""""""""""""""""""""""""""
" Buffers navigation
""""""""""""""""""""""""""""""""
nnoremap <F5> :buffers<CR>:buffer<Space>


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
" Tab navigation
""""""""""""""""""""""""""""""""
nnoremap <leader>t  :tabnew<CR>:CtrlP<CR>
nnoremap <leader>\ :tabonly<CR>

nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt


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
