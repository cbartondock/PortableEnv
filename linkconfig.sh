#!/bin/bash
#declare -a configs=("vimrc" "zshrc" "gitconfig")
#ln -s ~/.vim/config_files/vimrc ~/.vimrc
#ln -s ~/.vim/config_files/.zshrc ~/.zshrc

for cfile in config_files/*; do
  [ -e "$cfile" ] || continue #don't go to glob if no file found
  name="$(basename "$cfile")"
  echo "Linking $name to $HOME/.$name"
  #ln -s "$HOME/.vim/config_files/$name $HOME/../$name"
  ln -s "$(cd "$HOME/.vim/config_files";pwd)/$name" "$HOME/.$name"

done;
