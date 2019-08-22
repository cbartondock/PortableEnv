for undo_file in ~/.vim/undo/*
do
  [ -f "$undo_file" ] || continue
  real_file=$(echo "$(basename $undo_file)" | sed 's:%:/:g')
  [ -f "$real_file" ] || rm -- "$undo_file"
done
