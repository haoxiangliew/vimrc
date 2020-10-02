"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hao Xiang Liew's server .vimrc
" Vim configuration without coc.nvim completion engine
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set nocompatible to prevent conflicts in configurations
set nocompatible

" Install vim-plug if it is not installed
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Configure vim-plug
call plug#begin()

Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'

call plug#end()

" Better SuperTab
let g:SuperTabDefaultCompletionType="<c-n>"

" Map Enter to complete in INSERT COMPL
inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))

" Enable Smarter tab line
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'

" NERDTree Toggle in Command Mode with <Tab>
nmap <tab> :NERDTreeToggle<CR>

" Use <Del> to trim trailing whitespace
map <Del> :%s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End of custom plugin settings and mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set how many lines vim remembers
set history=1000

" Set how many levels of undo in vim
set undolevels=1000

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set 7 lines to cursor
set so=7

" Prevent garbled characters in Chinese Language Windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Always show current position and line numbers
set ruler
set number

" Set height of command bar
set cmdheight=1

" Search settings
set ignorecase
set smartcase
set hlsearch
set incsearch
set magic

" Set a faster update time for autocomplete performance
set updatetime=300

" Don't redraw while executing macros for performance
set lazyredraw

" Match brackets
set showmatch
set mat=2

" Add extra margin
set foldcolumn=1

" Enable syntax highlighting
syntax enable

" Set utf8 as standard encoding
set encoding=utf8

" Tab settings
set expandtab
set smarttab
" Auto Indent
set ai
" Smart Indent
set si
" Wrap Lines
set wrap
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Always show status line
set laststatus=2
