if ! [ -d "/home/user/.vim" ] ; then
  mkdir "/home/user/.vim"
fi

if ! [ -d "/home/user/.vim/ftdetect" ] ; then
 mkdir "/home/user/.vim/ftdetect"
fi

if ! [ -d "/home/user/.vim/syntax" ] ; then
 mkdir "/home/user/.vim/syntax"
fi

cp feder_ftdetect.vim /home/user/.vim/ftdetect/feder.vim
cp feder_syntax.vim /home/user/.vim/syntax/feder.vim

if ! [ -d "/usr/share/gtksourceview-3.0/language-specs/" ] ; then
 echo "/usr/share/gtksourceview-3.0/language-specs/ doesn't exist"
 echo "=> Syntax Hightlighting for gedit won't be installed"
else
  echo "Requires su permissions for copying federlang.lang to"
  echo "/usr/share/gtksourceview-3.0/language-specs"
  sudo cp federlang.lang /usr/share/gtksourceview-3.0/language-specs/feder.lang
fi
