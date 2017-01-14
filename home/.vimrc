if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'tpope/vim-sensible'

" ---- asthetic ----

" ---- navigation ----

" ---- search ----

" ---- programming -----

" ------ markdown------
" buildin syntax underlines internal underscores, ex x86_64
Plug 'tpope/vim-markdown'
""" npm -g install instant-markdown-d first
Plug 'suan/vim-instant-markdown'

call plug#end()



" ---- General Settings ----

autocmd Filetype text setlocal copyindent
autocmd Filetype conf setlocal copyindent
autocmd Filetype go setlocal ts=3 sw=3 sts=0 noexpandtab

highlight nonascii guibg=Red ctermbg=1 term=standout
au BufReadPost * syntax match nonascii "[^\u0000-\u007F]"

" http://stackoverflow.com/questions/2447109/showing-a-different-background-colour-in-vim-past-80-characters
" 72 is my line length.
" I should not do this only for specific file types.
"let &colorcolumn=join(range(73,999),",")


" ---- Plugin Specific Settings ----

