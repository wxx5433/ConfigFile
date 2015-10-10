"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set the runtime path to include Vundle and initialize
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" My plugin
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/syntastic'  " Syntax Highlighting
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Valloric/ListToggle'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mbbill/undotree'
Plugin 'powerline/fonts'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'fatih/vim-go'
call vundle#end()            " required
filetype plugin indent on    " required


""""""""""""""""""""""""""""""
" general setting
""""""""""""""""""""""""""""""
set nocompatible
set backspace=2 " make backspace work like most other apps

set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set lazyredraw          " redraw only when we need to.

set termencoding=utf-8
set encoding=utf-8

" set auto indent
set smartindent
set shiftwidth=2

set number              " show line numbers
set cursorline          " highlight current line

set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set colorcolumn=80      " highlight 80 character line

let mapleader=","       " leader is comma

" turn off search highlight, using ,<space>
nnoremap <leader><space> :nohlsearch<CR>    

" set color schemes
syntax enable
set background=dark
"colorscheme solarized
colorscheme gruvbox

" set backup
set backup
set backupdir=~/.vim-tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,/tmp
set writebackup

" move between window
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" remap escape key
inoremap jk <Esc>

" Maintain undo history between sessions
set undofile 
set undodir=~/.vim/undodir

" Toggle paste mode
set pastetoggle=<F2>

""""""""""""""""""""""""""""""
" CtrlP 
""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files = 0     " Set no max file limit
let g:ctrlp_working_path_mode = 0   " Search from current directory instead of project root
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.class,*.jar     " ignore some files

""""""""""""""""""""""""""""""
" Ultisnips
""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

""""""""""""""""""""""""""""""
" UndoTree
""""""""""""""""""""""""""""""
nnoremap <leader>u :UndotreeToggle<cr>

""""""""""""""""""""""""""""""
" EasyMotion
""""""""""""""""""""""""""""""
let g:EasyMotion_leader_key = ';'

""""""""""""""""""""""""""""""
" ListToggle
""""""""""""""""""""""""""""""
let g:lt_location_list_toggle_map = '<leader>w'
let g:lt_quickfix_list_toggle_map = '<leader>q'

""""""""""""""""""""""""""""""
" NerdTree
""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
" open a NERDTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
" show the status line
set laststatus=2
"set statusline=%f "tail of the filename

""""""""""""""""""""""""""""""
" YouCompleteMe
""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '$HOME/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

""""""""""""""""""""""""""""""
" Markdown
""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled=1  "disable folding
"autocmd BufNewFile,BufReadPost *.md set filetype=markdown

