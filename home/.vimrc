call plug#begin()

Plug 'tpope/vim-sensible'

" ---- asthetic ----
" http://ethanschoonover.com/solarized
Plug 'altercation/vim-colors-solarized'
"Plug 'tomasr/molokai'
" https://github.com/powerline/fonts
Plug 'bling/vim-airline'

" ---- navigation ----
Plug 'scrooloose/nerdtree'
"Plug 'jistr/vim-nerdtree-tabs'

" ---- search ----
"Plug 'kien/ctrlp.vim'

" ---- programming -----
"Plug 'scrooloose/syntastic'
"Plug 'xolox/vim-misc' " Needed for easytags.
"Plug 'xolox/vim-easytags'
"Plug 'majutsushi/tagbar'

" ------ golang ------
Plug 'fatih/vim-go'
" 20150308 gocode is included in fatih/vim-go so commenting out
" Plug 'nsf/gocode', { 'rtp': 'vim' }

" ------ markdown------
""" 20150303 the buildin syntax underlines internal underscores, ex  x86_64
Plug 'tpope/vim-markdown'
""" npm -g install instant-markdown-d first
Plug 'suan/vim-instant-markdown'

call plug#end()



" ---- General Settings ----

autocmd Filetype go setlocal ts=3 sw=3 sts=0 noexpandtab

""" http://stackoverflow.com/questions/2447109/showing-a-different-background-colour-in-vim-past-80-characters
" 20150519 72 is my line length.
let &colorcolumn=join(range(73,999),",")


" ---- Plugin Specific Settings ----


" -------- altercation/vim-colors-solarized settings --------
"  Toggle this to 'light' for light colorscheme
"""set background=light
set background=dark

" Set the colorscheme
colorscheme solarized

" -------- bling/vim-airline settings --------
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

" --------- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
"let g:nerdtree_tabs_open_on_console_startup = 1

" ----- scrooloose/syntastic settings -----
" let g:syntastic_error_symbol = '✘'
" let g:syntastic_warning_symbol = "▲"
" augroup mySyntastic
"   au!
"   au FileType tex let b:syntastic_mode = "passive"
" augroup END

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
" set tags=./tags;,~/.vimtags
" " Sensible defaults
" let g:easytags_events = ['BufReadPost', 'BufWritePost']
" let g:easytags_async = 1
" let g:easytags_dynamic_files = 2
" let g:easytags_resolve_links = 1
" let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
" nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)
