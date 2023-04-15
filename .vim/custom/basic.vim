set nocompatible
set showmatch
set visualbell
set ruler
set nowrap
set showcmd
set wildmenu
set wildmode=list,full
set listchars=eol:↲,tab:→·,trail:·
set scrolloff=8
set hidden

" highlight search incrementally ignoring case
set hlsearch
set ignorecase
set smartcase
set incsearch

" relative numbers except in insert mode
set number
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &number && mode() != "i" | set relativenumber   | endif
	autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &number                  | set norelativenumber | endif
augroup END

" tab width and indent
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

" basic syntax highlighting
syntax on
filetype plugin indent on
autocmd FileType yaml,yml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

