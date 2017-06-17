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
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'vim-airline/vim-airline'
Plug 'chrisbra/csv.vim'
Plug 'scrooloose/nerdcommenter'

" Colorschemes
Plug 'altercation/vim-colors-solarized'

" Python only plugins
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }
Plug 'nvie/vim-flake8', { 'for': 'python' }
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }

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

" Autoclose YCM helper window after user
let g:ycm_autoclose_preview_window_after_completion=1

" YCM default Python 3
let g:ycm_python_binary_path='python'

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

" Folding Python code
set foldlevelstart=1
nnoremap <space> za
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0

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
nnoremap H :tabnext<CR>
nnoremap L :tabprev<CR>


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
