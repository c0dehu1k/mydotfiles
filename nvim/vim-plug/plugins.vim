" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Dependencies
  Plug 'Shougo/neocomplcache'        " Depenency for Shougo/neosnippet
  Plug 'godlygeek/tabular'           " This must come before plasticboy/vim-markdown
  Plug 'tpope/vim-rhubarb'           " Depenency for tpope/fugitive
  
  " General plugins
  "Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'ctrlpvim/ctrlp.vim'          " CtrlP is installed to support tag finding in vim-go

  " For Tabs and spaces
  Plug 'editorconfig/editorconfig-vim'
  Plug 'tpope/vim-sleuth'
  
  " Fuzzy Finder
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'

  Plug 'majutsushi/tagbar'
  Plug 'mhinz/vim-signify'
  Plug 'mileszs/ack.vim'
  Plug 'neomake/neomake'
  Plug 'sbdchd/neoformat'
  Plug 'scrooloose/nerdcommenter'
  " Plug 'scrooloose/nerdtree' 
  Plug 'sebdah/vim-delve'
  Plug 'terryma/vim-multiple-cursors'
  
  " Git plugins
  Plug 'tpope/vim-fugitive'
  " Plug 'airblade/vim-gitgutter'
  
  Plug 'tpope/vim-surround'
  Plug 'ryanoasis/vim-devicons'

  " Go support
  Plug 'fatih/vim-go'                            

  " Markdown syntax highlighting    
  Plug 'plasticboy/vim-markdown'                 
  Plug 'jiangmiao/auto-pairs'

  Plug 'altercation/vim-colors-solarized'
             
  
  " Use release branch (recommend)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Colorschemes
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'ayu-theme/ayu-vim'
  Plug 'kaicataldo/material.vim'
  Plug 'rakr/vim-one'
  Plug 'arcticicestudio/nord-vim'

  " For Docker File
  Plug 'ekalinin/dockerfile.vim'    
  
  " On-demand lazy load
  Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
  
  " https://github.com/nvim-telescope/telescope.nvim
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'luochen1990/rainbow'

call plug#end()
