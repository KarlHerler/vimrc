# Vimrc #

Just my `.vimrc` and `.vim` directory for pathogen, as with all _dotfiles_ these are
work in progres and YMMW.

## Usage ##

Clone this repo down, get the submodules and link the `.vimrc` to your `.vimrc` like
```
mv -r vimrc ~/.vim
git submodule init
git submodule update
ln -s ./.vimrc ../.vimrc  # Assumes that you've cloned this repo in home
```

