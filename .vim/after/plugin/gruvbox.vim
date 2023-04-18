if empty(globpath(&rtp, 'colors/gruvbox.vim'))
    finish
endif

" gruvbox dark mode
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox
