set nocompatible
filetype off

""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Must have
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'

call vundle#end()
filetype plugin indent on


""""""""""""""""""""""""""""""""
" Editor Options
""""""""""""""""""""""""""""""""
set sw=4 ts=4 sts=4
set numberwidth=4
let mapleader="ç"
set relativenumber

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
