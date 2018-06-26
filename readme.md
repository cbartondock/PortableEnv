# Chris's Stand Alone Vim 

This includes the following plugins: 

[auto-pairs](https://github.com/jiangmiao/auto-pairs)

[vim-colorschemes](https://github.com/flazz/vim-colorschemes)

[goyo.vim](https://github.com/junegunn/goyo.vim)

[nerdcommenter](https://github.com/scrooloose/nerdcommenter)

[nerdtree](https://github.com/scrooloose/nerdtree)

[surround](https://github.com/tpope/vim-surround)

[vim-airline](https://github.com/vim-airline/vim-airline)

[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)

with shortcuts set up in what I hope is an intuitive way.

## Installation
Clone this project and make it the .vim directory, then change directory into each of the submodules (in .vim/bundle) and run

```
git checkout master
```

```
git submodule update --init
```

I know it's a pain that you have to do this for every submodule, but I haven't been able to get it to work using the recursive version of update. Next run:

```
ln -s ~/.vim/vimrc ~/.vimrc
```

You should be mostly good to go, but you also need to install [powerline fonts](https://github.com/powerline/fonts) and set one of them as your terminal font.

## Nice additons
I suggest you use iTerm2 as your terminal and install [powerline-shell](https://github.com/b-ryan/powerline-shell)
