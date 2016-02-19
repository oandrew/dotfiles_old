set nocompatible              
filetype off                 
set autoindent
set autoread
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set cursorline 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set encoding=utf-8    
set expandtab
set hid
set hlsearch        
set ignorecase
set incsearch        
set laststatus=2 
set lazyredraw
set magic
set mouse=a
set nobackup
set noerrorbells
set noswapfile
set novisualbell
set nowrap    
set nowritebackup
set number
set ruler
set scrolloff=8
set shiftwidth=2
set smartcase
set smarttab
set tabstop=2
set ttimeout
set ttimeoutlen=10
set ttyfast
set wildmenu
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" set backspace=eol,start,indent
" set whichwrap+=<,>,h,l
" set showmatch
" set mat=2
set t_vb=
set tm=500
set foldcolumn=1
set wildignorecase
"set numberwidth=30

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'mhinz/vim-signify' 
Plugin 'fatih/vim-go'
" Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'bling/vim-bufferline'
"Plugin 'xolox/vim-easytags' 
"Plugin 'xolox/vim-misc' 
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'

" Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()   
filetype plugin indent on

" Theme/Colors
syntax enable
"let g:solarized_degrade=1
"set t_Co=256
"let g:solarized_termcolors=256
"let g:solarized_termcolors=16
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
"let g:solarized_termtrans=1

set background=dark
colorscheme solarized

highlight clear SignColumn

" Config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:bufferline_echo = 0
let g:ycm_confirm_extra_conf = 0
let g:ctrlp_map = '<c-p>'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:easytags_syntax_keyword = 'always'
let g:easytags_async = 1
let g:signify_vcs_list = ['svn']
let g:tmux_navigator_no_mappings = 1

let g:ctrlp_match_window = 'order:ttb,max:20'
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:NERDSpaceDelims=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:easytags_async=1
let g:easytags_python_enabled=1
" Mapping
let mapleader="," 
"nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
"nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
"nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
"nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

nnoremap <leader>jd :YcmCompleter GoTo<CR>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

