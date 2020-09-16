"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hao Xiang Liew's .vimrc
" My development environment including IDE features
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
" yarn global add prettier
Plug 'prettier/vim-prettier'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'

" Configuring coc.nvim for autocomplete
" Make sure nodejs, npm, and yarn are installed on the system!
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" coc.nvim extensions

" clangd
Plug 'clangd/coc-clangd', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'antonk52/coc-cssmodules', {'do': 'yarn install --frozen-lockfile'}
Plug 'weirongxu/coc-explorer', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
" default-jdk
Plug 'neoclide/coc-java', {'do': 'yarn install --frozen-lockfile'}
" python3
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
" dotnet-sdk
Plug 'coc-extensions/coc-omnisharp', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'fannheyward/coc-sql', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
" yarn global add vim-language-server
Plug 'iamcco/coc-vimlsp', {'do': 'yarn install --frozen-lockfile'}

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

" Use Powerline Fonts in vim-airline
let g:airline_powerline_fonts = 1

" Use <Del> to trim trailing whitespace
map <Del> :%s/\s\+$//e

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End of custom plugin settings and mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set how many lines vim remembers
set history=1000

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

" Prevent vim from starting in replace mode in WSL
set t_u7=
