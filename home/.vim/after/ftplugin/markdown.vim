" Markdown file type specific settings

setlocal textwidth=72
" That will automatically wrap text as close to 72 characters as white
" space allows without exceeding the 72 character limit. This option
" wraps at word boundaries.
setlocal formatoptions+=t

" highlight whitespaces
set list
set listchars=tab:»·,trail:·

" Don't visually wrap long lines. Use: URLs at the end of lines.
setlocal nowrap

" Purple background color...
:highlight OverLength term=standout cterm=standout ctermfg=13
" for the one char at position 80.
:2mat OverLength '\%80v.'
" This would be for all characters at position greater than 81.
":match OverLength /\%>79v.\+/
" Highlight all columns over 100.
:match OverLength '\%>100v.\+'
":match ErrorMsg '\%>100v.\+'
