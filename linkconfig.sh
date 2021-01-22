#!/bin/bash
for cfile in config_files/*; do
  [ -e "$cfile" ] || continue #don't go to glob if no file found
  name="$(basename "$cfile")"
  #if [ "$OSTYPE" = "msys" ]
  #then
    #echo "Linking $name to \"$(cygpath -w $HOME/.$name | sed -r 's/[\\]+/\\\\/g')\""
    #echo "mklink /h \"$(cygpath -w $HOME/.$name | sed -r 's/[\\]+/\\\\/g')\" \"$(cygpath -w $HOME/.vim/config_files/$name | sed -r 's/[\\]+/\\\\/g')\" "

    #cmd //c "mklink /h \"$(cygpath -w $HOME/.$name | sed -r 's/[\\]+/\\\\/g')\"  \"$(cygpath -w $HOME/.vim/config_files/$name | sed -r 's/[\\]+/\\\\/g')\""
  #else

    echo "Linking $name to $HOME/.$name"
    rm $HOME/.$name
    ln -s "$(cd "$HOME/.vim/config_files";pwd)/$name" "$HOME/.$name"
  #fi
done;
