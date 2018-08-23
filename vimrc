"""" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


set nocompatible 	" be iMproved, required
filetype off		" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'sudar/vim-arduino-syntax'
Plugin 'martinda/Jenkinsfile-vim-syntax'
Plugin 'maralla/completor.vim'
"
"Plugin 'kien/ctrlp.vim'
"Plugin 'sirver/ultisnips'
"Plugin 'valloric/youcompleteme'
"Plugin 'udalov/kotlin-vim'
"Plugin 'cohama/lexima.vim'
"Plugin 'mattn/emmet-vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'artur-shaik/vim-javacomplete2'
"Plugin 'benekastah/neomake'
"Plugin 'andreshazard/vim-freemarker'
"Plugin 'airblade/vim-gitgutter'

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'dracula/vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" plugins


" Rainbow Parenteses
"let g:rbpt_colorpairs=[
"    \ ['brown',       'RoyalBlue3'],
"    \ ['Darkblue',    'SeaGreen3'],
"    \ ['darkgray',    'DarkOrchid3'],
"    \ ['darkgreen',   'firebrick3'],
"    \ ['darkcyan',    'RoyalBlue3'],
"    \ ['darkred',     'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['brown',       'firebrick3'],
"    \ ['gray',        'RoyalBlue3'],
"    \ ['black',       'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['Darkblue',    'firebrick3'],
"    \ ['darkgreen',   'RoyalBlue3'],
"    \ ['darkcyan',    'SeaGreen3'],
"    \ ['darkred',     'DarkOrchid3'],
"    \ ['red',         'firebrick3'],
"    \ ]

let g:rbpt_colorpairs=[
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['190',     'SeaGreen3'],
    \ ['255', 'DarkOrchid3'],
    \ ['077',       'firebrick3'],
    \ ['013',        'RoyalBlue3'],
    \ ['033',       'SeaGreen3'],
    \ ['153', 'DarkOrchid3'],
    \ ['199',    'firebrick3'],
    \ ['046',   'RoyalBlue3'],
    \ ['226',    'SeaGreen3'],
    \ ['196',     'DarkOrchid3'],
    \ ['045',         'firebrick3'],
    \ ]

let g:rbpt_max=16
let g:rbpt_loadcmd_toggle=0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


" Airline
let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts=1
let g:airline_theme='wombat'
"let g:airline_symbols


" Molokai
let g:molokai_original=1
let g:rehash256=1


" NerdTree Configuration
" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2

nmap <F8> :TagbarToggle<CR>


syntax on

set autoindent
set colorcolumn=80
set cursorline
set encoding=utf8
set expandtab
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set noshowmode
set noswapfile
set number
set ruler
set shiftwidth=2
set showbreak=···
set showcmd
set showmatch
set showtabline=2
set smartcase
set smartindent
set smarttab
set softtabstop=2
set t_Co=256
set undolevels=1000
set visualbell

colorscheme molokai

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
