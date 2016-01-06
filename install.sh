#!/bin/bash
echo "Bootstrapping vimrc into .vim"
echo "Current working directory is: `pwd`"
echo "Installation target is: ~/.vim and ~/.vimrc"
echo ""

# Do some sanity checking
if [ "$(basename `pwd`)" = ".vim" ]
then
  echo "STOPPING INSTALLATION!"
  echo "Currently working in a directory called .vim, installing here would destroy the clone you have made"
  echo "Move/rename this directory before proceeding"
  exit 1
fi

# Start with the actual installation
echo "[0%] Creating the ~/.vim directory"
mkdir -p ~/.vim/autoload
echo "[16%] Downloading vim pathogen"
curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim >~/.vim/autoload/pathogen.vim
echo "[33%] Initialzing plugins"
git submodule init
echo "[50%] Downloading plugins"
git submodule update
echo "[66%] Moving plugins to ~/.vim"
cp -r bundle ~/.vim/
echo "[83%] Installing .vimrc"
cp vimrc ~/.vimrc
echo "[100%] Installation done"
