# Vimrc #

Just my `.vimrc` and `.vim` directory for pathogen, as with all _dotfiles_ these are
under constant improvement and YMMW.

These packages are designed to be lean and portable and thus are limited to a selected
base set of useful quality of life features rather than a _just include every package
on [vimawesome](http://vimawesome.com/)_ philosophy.

## Quick start ##

In order to easily install this project you can execute the `install.sh` bash script
using: `./install.sh`. This will automatically set everything up for you.

**NOTE: This will overwrite your ~/.vim and ~/.vimrc so back these up if you want to
keep them**


## Manual setup ##

The `install.sh` script automatically performs these steps so you do not need to do
these if you are using the script.

### Requirements ###

The plugins used require [pathogen](https://github.com/tpope/vim-pathogen) to be installed
this is easiest done after installing this repo but before starting vim by executing:

```
mkdir -p ~/.vim/autoload
curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim >pathogen.vim
```

### Usage ###

Clone this repo down, get the submodules and link the `.vimrc` to your `.vimrc` like
```
mv -r vimrc ~/.vim
git submodule init
git submodule update
ln -s ~/.vim/vimrc ~/.vimrc  # Assumes that you've cloned this repo in home
```

