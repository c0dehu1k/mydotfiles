"----------------------------------------------
" Plugin: scrooloose/nerdtree
"----------------------------------------------
" nnoremap <leader>d :NERDTreeToggle<cr>
" nnoremap <F2> :NERDTreeToggle<cr>

" Files to ignore

" let NERDTreeIgnore = [
"     \ '\.pyc$','\.png$','\.pyo$','__pycache__$','\.png$','\.jpg$',
"     \ '\.gif$','\.mp3$','\.flac$', '\.ogg$', '\.mp4$','\.avi$',
"     \ '.webm$','.mkv$','\.pdf$', '\.zip$', '\.tar.gz$', '\.rar$',
"     \ '\.exe$','\.com$','\.dmg$',
"     \ '\~$',
"     \ '\.pyc$',
"     \ '^\.DS_Store$',
"     \ '^node_modules$',
"     \ '^.ropeproject$',
"     \ '^__pycache__$',
" \]
" let NERDTreeWinSize=35
" autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
" let g:nerdtree_tabs_open_on_console_startup=0
"
" " Close vim if NERDTree is the only opened window.
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Show hidden files by default.
" let NERDTreeShowHidden = 1

" Allow NERDTree to change session root.
" let g:NERDTreeChDirMode = 2