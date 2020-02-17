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
Plug 'preservim/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" Git workflow
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Colorschemes
Plug 'altercation/vim-colors-solarized'

" Python only plugins
Plug 'nvie/vim-flake8', { 'for': 'python' }
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'tmhedberg/SimpylFold', { 'for': 'python' }

" Javascript only plugins
Plug 'othree/yajs.vim', { 'for': 'javascript'}

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

" Indentation
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

" Solarized theme for MacOS
if has('macunix')
  set background=dark
  silent! colorscheme solarized
  syntax on
  set t_Co=32
endif


""""""""""""""""""""""""""""""""
" Plugin Settings
""""""""""""""""""""""""""""""""
" Fugitive shortcuts
nmap <leader>gs :Gstatus<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>gp :Gpush<cr>

" Autoclose YCM helper window after used
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
set foldlevelstart=0
nnoremap <space> za
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0

" NERDCommenter config
let g:NERDSpaceDelims = 2


""""""""""""""""""""""""""""""""
" Filetype specific changes
""""""""""""""""""""""""""""""""
autocmd filetype html,css,htmldjango,javascript,vim set shiftwidth=2 tabstop=2 softtabstop=2
autocmd filetype python set shiftwidth=4 tabstop=4 softtabstop=4
au BufNewFile,BufRead *.html,*htm,*shtml,*stm set ft=jinja


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
if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    silent! execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      call system("tmux select-pane -" . a:tmuxdir)
      redraw!
    endif
  endfunction

  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

  nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
  nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
  nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
  nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif


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
