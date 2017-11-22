set ic
set nu
set relativenumber
set autoindent
set cindent
set incsearch
set hlsearch
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
set colorcolumn=120

" Key Mapping for Adding Python Debugger in the source code
au FileType python map <silent> <leader>b oimport pudb; pudb.set_trace()<esc>

" Setting the tag folder for vim
" Search for a tags file in the directory of the current file, then for a tags file
" from the working directory upward to $HOME
set tags=./tags;,tags;$HOME

let mapleader = ","

" For Display of Hidden Characters
set listchars=tab:▸\ ,eol:¬

syntax on
filetype plugin on
colorscheme sandydune

" Default Key Mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>l :set list!<CR>
" Turn off highlighting after a search
nnoremap <leader>h :noh<CR>

" Copy absolute path  with filename
nnoremap <leader>cp :let @+=expand("%:p")<CR>
" Copy Only Filename (foo.txt)
nnoremap <leader>cf :let @+=expand("%:t")<CR>
" Copy only the directory of the file
nnoremap <leader>cd :let @+=expand("%:p:h")<CR>

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
let NERDTreeIgnore = ['\.pyc$','\.png$','\.pyo$','__pycache__$']

"autocmd vimenter * NERDTree
"autocmd VimEnter * wincmd p

"GVim Related Configurations
set switchbuf=useopen,usetab
if has('win32')
    set guifont=Consolas:h14   " Win32.
elseif has('gui_macvim')
    set guifont=Source\ Code\ Pro\ for\ Powerline:h12 " Macvim
else
    set guifont=Monaco:h14
endif

set go-=m
set go-=T
set go-=r  "remove right-hand scroll bar
set go-=L  "remove left-hand scroll bar
let g:autopep8_max_line_length=120

" Syntastic max line length to 120 characters
let g:syntastic_python_pylint_post_args="--max-line-length=120"

" Pymode Confirguration Parameters
let g:pymode_options_max_line_length = 120
let g:pymode_options_colorcolumn = 1
let g:pymode_virtualenv = 1
let g:pymode_indent = 1
let g:pymode_lint_unmodified = 1
let g:pymode_lint_message = 1
let g:pymode_lint_cwindow = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'pylint']

"vim-airline Related Configurations
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif
let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline_theme = 'powerlineish'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.paste = '|'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" NerdCommenter Related Configurations
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.exe,*.pyc,*.pyc,*.pdf,*.doc,*.pptx,*.docx  " Don't need them to open in VIM atleast
set wildignore+=*.png,*.mov,*.mp3,*.mp4,*.xlsx,*.xls,*.jpg,*.jpeg,*.dll,*.py~,*.pyo,*.tar.gz
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'


if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif
