set ic
set nu
set relativenumber
set autoindent
set cindent
set incsearch
set hlsearch
set laststatus=2
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autochdir
set ignorecase
set nobackup
set nowritebackup
set noswapfile
set laststatus=2
set encoding=utf-8
set history=700
set undolevels=700
set nofoldenable
set clipboard=unnamed
set expandtab

"Setting the tag folder for vim i.e. ctags
set tags=./tags

let mapleader = ","

"For Display of Hidden Characters
set listchars=tab:▸\ ,eol:¬

syntax on
filetype plugin on
"colorscheme jellybeans

"Default Key Mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>l :set list!<CR>
" Turn off highlighting after a search
nnoremap <leader>h :noh<CR>

"Plugin Manager Vim
execute pathogen#infect()

"YouCompleteMe Related Configurations
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_insertion = 1
nnoremap <leader>jd :YcmCompleter GoTo<CR>
"nnoremap <leader>jr :YcmCompleter GoToReferences<CR>

"NerdTree Related Configurations
let g:nerdtree_tabs_open_on_console_startup=0
map <C-n> :NERDTreeToggle<CR>

"Below list has used to ignore the type of file we want NerdTress to display
let NERDTreeIgnore = ['\.pyc$','\.png$','\.pyo$']

"autocmd vimenter * NERDTree
"autocmd VimEnter * wincmd p

"GVim Related Configurations
set switchbuf=useopen,usetab
if has('win32')
    set guifont=Consolas:h12   " Win32.
elseif has('gui_macvim')
    set guifont=Monaco:h12     " OSX.
else
    set guifont=Monospace\ 12  " Linux.
endif

set go-=m
set go-=T
set go-=r  "remove right-hand scroll bar
set go-=L  "remove left-hand scroll bar
let g:autopep8_max_line_length=120

"vim-airline Related Configurations
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif
let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline_theme = 'papercolor'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" NerdCommenter Related Configurations
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting aregion)
let g:NERDCommentEmptyLines = 1
