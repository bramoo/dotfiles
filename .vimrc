" ----------vundle plugins
" needed for vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/

call vundle#begin()
" vundle ur vundle
Plugin 'gmarik/Vundle.vim'

" nice statuslines
Plugin 'edkolev/tmuxline.vim'
Plugin 'itchyny/lightline.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'

call vundle#end()

" ----------plugin config 
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'component': {
	\ 	'readonly': '%{&readonly?"⭤":""}',
	\ },
	\ 'separator': { 'left': '⮀', 'right': '⮂' },
	\ 'subseparator': { 'left': '⮁', 'right': '⮃' }
	\ }

let g:tmuxline_separators = {
	\ 'left': '⮀',
	\ 'left_alt': '⮁',
	\ 'right': '⮂',
	\ 'right_alt': '⮃',
	\ 'space': ' '
	\ }

" ----------vim config
" syntax highlighting
syntax on

" reload files changed outside vim
set autoread

" endoding
set encoding=utf-8
set fileencoding=utf-8

" line endings
set fileformat=unix
set fileformats=unix,dos

" search
set incsearch
set hlsearch

" indent
set autoindent
set smartindent

" detect file types and load plugins
filetype on
filetype plugin on
filetype indent on

" always show lightline
set laststatus=2
" hide vim mode
set noshowmode
" fix lightline colours
if !has('gui_running')
	set t_Co=256
endif

