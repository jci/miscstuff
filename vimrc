

set nocompatible
filetype off


set t_Co=256
set ls=2
set tabstop=4
set shiftwidth=4
set scrolloff=3
set showcmd
set hlsearch
set incsearch
set ruler
set number
set ignorecase
set title
set ttyfast


set autowrite
" set completeopt=menu
let g:vaxe_lime_target = "linux"
set laststatus=2



set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'skalnik/vim-vroom'
Plugin 'tpope/vim-fugitive'
Plugin 'orenhe/pylint.vim'
Plugin 'avakhov/vim-yaml'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'YankRing.vim'
Plugin 'AutoComplPop'
Plugin 'satanas/rename.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'rstacruz/sparkup'
Plugin 'ajh17/Spacegray.vim'
Plugin 'majutsushi/tagbar'
Plugin 'slim-template/vim-slim.git'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'elixir-lang/vim-elixir'
Plugin 'kchmck/vim-coffee-script'
call vundle#end()   
filetype plugin indent on 

if has('gui_running')
		set guifont=Panic\ Sans\ 10
endif

colorscheme darkblue


set statusline=%t%m%r%h%w\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
set cursorline
set numberwidth=5
set background=dark


let g:airline_powerline_fonts=1
let g:solarized_termcolors=256
let g:Powerline_symbols = 'fancy'
set mat=5
set colorcolumn=120
set mouse=a

:nmap <C-tab> :tabnext <CR>
:nmap <C-S-tab> :tabprevious <CR>
:nmap <C-t> :tabnew <CR>
:nmap <C-o> :CtrlP<CR>
:nmap <C-l> :TagbarToggle<CR>
map <F3> :NERDTreeToggle<CR>

let g:airline_theme='powerlineish'
if !exists('g:airline_symbols')
	    let g:airline_symbols = {}
	endif


let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

if has('gui_running')
	    set guifont=Anonymous\ Pro\ for\ Powerline\ 15
	endif

let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

set runtimepath^=~/.vim/bundle/ctrlp.vim
