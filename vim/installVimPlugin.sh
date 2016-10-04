mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone git@github.com:jistr/vim-nerdtree-tabs.git
git clone git@github.com:tpope/vim-sensible.git
git clone git@github.com:ctrlpvim/ctrlp.vim.git
git clone git@github.com:tpope/vim-fugitive.git
git clone git@github.com:tpope/vim-surround.git
git clone git@github.com:klen/python-mode.git
git clone git@github.com:scrooloose/nerdtree.git
git clone git@github.com:Valloric/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
cd ..
git clone git@github.com:scrooloose/nerdcommenter.git
git clone git@github.com:vim-airline/vim-airline.git
git clone git@github.com:vim-airline/vim-airline-themes.git
git clone git@github.com:scrooloose/syntastic.git
git clone git@github.com:scrooloose/nerdtree.git

# All Famous ColorSchemes for vim
mkdir -p ~/.vim/colors
cd ~/.vim/colors
git clone git@github.com:flazz/vim-colorschemes.git
cd ./vim-colorschemes/colors/
mv *.vim ../../
cd ~/.vim/colors
rm -rf vim-colorschemes/
