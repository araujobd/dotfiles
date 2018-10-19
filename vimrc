" Some configurations copied from https://https://github.com/ArthurGorgonio/Dotfiles/blob/master/vimrc
" bdantas47@hotmail.com, copy in: 2018 Oct 19

""""""""""""""""""""""""""""""""""""""""
"        Vim Configuration File        "
"     Maintainer: Bruno Dantas         "
"       Last Change: 2018 Oct 19       "
""""""""""""""""""""""""""""""""""""""""

""" COLORS CODE
" I choose these colors to customize the rainbow parentheses plugin. These
" colors are ordened by xterm code. The follow lines represent a list of the
" colors than I use.
" Code color in xterm - the name of the color - the code in rgb
" 000 -   Black    - #000000
" 009 -    Red     - #FF0000
" 010 -   Green    - #00FF00
" 011 -   Yellow   - #FFFF00
" 013 -  Fuchsia   - #FF00FF
" 014 -    Aqua    - #00FFFF
" 022 - DarkGreen  - #005F00
" 202 - OrangeRed1 - #FF5F00

" The follow links were used to choose the colors and the icon in the configuration
" color: https://jonasjacek.github.io/colors/


""" TO CLONE VUNDLE
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible 	" be iMproved, required
filetype off		" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' "Plugin Manager

""""""""""""""""""""""""""""""""""""""""
"               Plugins                "
""""""""""""""""""""""""""""""""""""""""

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'

Plugin 'luochen1990/rainbow'
Plugin 'tpope/vim-fugitive'
"Plugin 'martinda/Jenkinsfile-vim-syntax'
"Plugin 'sudar/vim-arduino-syntax'
"Plugin 'udalov/kotlin-vim'
"
"Plugin 'kien/ctrlp.vim'
"Plugin 'sirver/ultisnips'
"Plugin 'valloric/youcompleteme'
"Plugin 'cohama/lexima.vim'
"Plugin 'mattn/emmet-vim'
"Plugin 'scrooloose/syntastic'
"Plugin 'artur-shaik/vim-javacomplete2'
"Plugin 'benekastah/neomake'
"Plugin 'andreshazard/vim-freemarker'
"Plugin 'airblade/vim-gitgutter'

" Color schemes
Plugin 'ArthurGorgonio/vim-themes-improved'
Plugin 'tomasr/molokai'

""""""""""""""""""""""""""""""""""""""""
"             End Plugins              "
""""""""""""""""""""""""""""""""""""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""
"        Plugins Configurations        "
""""""""""""""""""""""""""""""""""""""""

" Rainbow Parenteses
"'parentheses': ['start=/(/ end=/)/ fold'
" the word fold indicates that (), [], and {} are colored individually by the
"   sectioned sequence
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
      \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
      \   'ctermfgs': [9, 10, 11, 12, 13, 14, 22, 202],
      \   'operators': '_,_',
      \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold',
      \       'start=/{/ end=/}/ fold'],
      \   'separately': {
      \     '*': {},
      \     'tex': {
      \       'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/',
      \           'start=/\{\ end=/\}\ '],
      \     },
      \     'lisp': {
      \       'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick',
      \           'darkorchid3'],
      \     },
      \     'vim': {
      \       'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/',
      \           'start=/{/ end=/}/ fold',
      \           'start=/(/ end=/)/ containedin=vimFuncBody',
      \           'start=/\[/ end=/\]/ containedin=vimFuncBody',
      \           'start=/{/ end=/}/ fold containedin=vimFuncBody'],
      \     },
      \  }
      \}

" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='wombat'

" NerdTree Configuration
" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2

" Tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left=1
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1

" Molokai
let g:molokai_original=1
let g:rehash256=1

""""""""""""""""""""""""""""""""""""""""
"      End Plugins Configurations      "
""""""""""""""""""""""""""""""""""""""""


syntax on

" Basic configuration
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

set pastetoggle=<F12> " sane identation on pastes

" Setting color scheme
colorscheme calm-theme

" Remaping commands
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
