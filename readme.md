# Chris's Standalone Vim 

This includes the following plugins: 

[auto-pairs](https://github.com/jiangmiao/auto-pairs)

[vim-colorschemes](https://github.com/flazz/vim-colorschemes)

[goyo.vim](https://github.com/junegunn/goyo.vim)

[nerdcommenter](https://github.com/scrooloose/nerdcommenter)

[nerdtree](https://github.com/scrooloose/nerdtree)

[surround](https://github.com/tpope/vim-surround)

[vim-airline](https://github.com/vim-airline/vim-airline)

[vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)

[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)

[vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace)

with shortcuts set up in what I hope is an intuitive way.

## Installation
Clone this project and make it the ~/.vim directory, then run:
```
git clone https://github.com/cbartondock/PortableEnv.git ~/.vim
cd ~/.vim
source submodules.sh
```

in order to download all the submodules. Next run:

```
source linkconfig.sh
```

in order to create symlinks to the various config files in config\_files

You should be mostly good to go, but you also need to install [powerline fonts](https://github.com/powerline/fonts) and set one of them as your terminal font.

## Nice Additions
I suggest you use iTerm2 as your terminal and install [powerline-shell](https://github.com/justjanne/powerline-go). I also prefer [Zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH) with some [OhMyZsh](https://ohmyz.sh/) [plugins](https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins) (git and osx at the least) to bash. I've included a .zshrc among config_files. If you use zsh, make sure you install powerline-shell and fonts-powerline first.


## Notes
I am using my own forks of oh-my-zsh and vim-airline-themes because I've made modifications to them (I will merge with the originals if and when my pull requests are accepted).

## Caveats
When installing powerline-shell there is the danger of using the wrong version of pip. On linux use system pip (`sudo apt-get install pip`) and *do not upgrade it when it prompts you to*.
