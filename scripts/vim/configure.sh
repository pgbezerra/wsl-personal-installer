#!/bin/sh

apt install -y fontconfig
pip3 install pynvim

# Install powerline
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf /usr/share/fonts/
fc-cache -vf
mv 10-powerline-symbols.conf /etc/fonts/conf.d/

# Install vim plug
su $USERNAME -c "curl -fLo $USER_HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

if test -L $USER_HOME/.vimrc || test -f $USER_HOME/.vimrc
then
  read -p "File ~/.vimrc already exists, can we drop it to continue? " -n1 REPLY
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    rm -v $USER_HOME/.vimrc
  else
    echo "Abort installation because you already have .vimrc file."
    echo "Backup it, and run again this script"
    exit 4
  fi
fi

# Install vim configuration on home directory
su $USERNAME -c "ln -s $INSTALL_DIR/scripts/vim/.vimrc $USER_HOME/.vimrc"

# Color scheme will throw error before PlugInstall. This is why we comment it,
# install plugins and uncomment
sed -i 's/^\(colorscheme\s.*\)$/" \1/mg' $INSTALL_DIR/scripts/vim/.vimrc

# Install all vim extensions and exit
su $USERNAME -c "vim -c 'PlugInstall' -c 'qa!'"

# Get color schema back on vim config
sed -i 's/^"\s\(colorscheme\s.*\)$/\1/mg' $INSTALL_DIR/scripts/vim/.vimrc

echo 'Vim setup completed.'