"----------------------------------------------
" Plugin: 'majutsushi/tagbar'
"----------------------------------------------
" Add shortcut for toggling the tag bar
nnoremap <F3> :TagbarToggle<cr>

let g:tagbar_autofocus=0
let g:tagbar_width=42
" Below mentioned commands is making toggle of tagbar fail as type of file is
" *.py and its keep on opening it again and again even after toogle
" autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose
autocmd BufWinLeave *.go :TagbarClose
" Language: Go
"Tagbar configuration for Golang
" let g:go_gotags_bin = '/Users/sunijosh/go/bin/gotags'
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }