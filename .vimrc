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
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'

call vundle#end()


""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""
" Enable filetype plugins
filetype plugin indent on

" The god key
let mapleader="ç"

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :qall<cr>


""""""""""""""""""""""""""""""""
" VIM UI
""""""""""""""""""""""""""""""""
" Always show current position
set ruler

" I got the sick moves man
set relativenumber


""""""""""""""""""""""""""""""""
" NERDTree settings
""""""""""""""""""""""""""""""""
" Toggle nerdtree with F10
map <F10> :NERDTreeToggle<CR>

" Current file in nerdtree
map <F9> :NERDTreeFind<cr>


""""""""""""""""""""""""""""""""
" Files, backups and undo
""""""""""""""""""""""""""""""""
" I hate swapfile, so I will turn it off
set nobackup
set noswapfile


""""""""""""""""""""""""""""""""
" Text, tab and indent related
""""""""""""""""""""""""""""""""
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set sts=4


""""""""""""""""""""""""""""""""
" Status Line 
""""""""""""""""""""""""""""""""
"Always show the status line
set laststatus=2

"Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


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
" Vim notes options
""""""""""""""""""""""""""""""""
let g:notes_directories = ['~/Dropbox/Notes']


""""""""""""""""""""""""""""""""
" Edit .vimrc in split
""""""""""""""""""""""""""""""""
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
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


""""""""""""""""""""""""""""""""
" Helper functions
""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE '
	en
	return ''
endfunction
