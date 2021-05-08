"----------------------------------------------
" Plugin: bling/vim-airline
"----------------------------------------------
" Show status bar by default.
set laststatus=1

" Enable top tabline.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Disable showing tabs in the tabline. This will ensure that the buffers are
" what is shown in the tabline at all times.
let g:airline#extensions#tabline#show_tabs = 1

" Whitespace Machine
"  enable/disable detection of whitespace errors.
let g:airline#extensions#whitespace#enabled = 1

" Enable powerline fonts.
let g:airline_powerline_fonts = 1

" Explicitly define some symbols that did not work well for me in Linux.
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.branch = "⎇'"
let g:airline_symbols.maxlinenr = ''

" let g:airline_extensions = []
