# Vimrc #

Just my `.vimrc` and `.vim` directory for pathogen, as with all _dotfiles_ these are
work in progres and YMMW.

## Requirements ##

The plugins used require [pathogen](https://github.com/tpope/vim-pathogen) to be installed
this is easiest done after installing this repo but before starting vim by executing:

```
mkdir -p ~/.vim/autoload
curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim >pathogen.vim
```

## Usage ##

Clone this repo down, get the submodules and link the `.vimrc` to your `.vimrc` like
```
mv -r vimrc ~/.vim
git submodule init
git submodule update
ln -s ~/.vim/vimrc ~/.vimrc  # Assumes that you've cloned this repo in home
```

