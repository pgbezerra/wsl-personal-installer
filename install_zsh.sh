#!/bin/bash

apt-get install -y zsh

mkdir -p $USER_HOME/.local/bin
chown $USERNAME:$USERNAME $USER_HOME/.local
chown $USERNAME:$USERNAME $USER_HOME/.local/bin

curl -L git.io/antigen > $USER_HOME/.local/bin/antigen.zsh
chown $USERNAME:$USERNAME $USER_HOME/.local/bin/antigen.zsh

if test -L $USER_HOME/.zshrc || test -f $USER_HOME/.zshrc
then
  read -p "File ~/.zshrc already exists, can we drop it to continue? " -n1 REPLY
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    rm -v $USER_HOME/.zshrc
  else
    echo "Abort installation because you already have .zshrc file."
    echo "Backup it, and run again this script"
    exit 3
  fi
fi

ln -s $INSTALL_DIR/.zshrc $USER_HOME/.zshrc

chsh -s $(which zsh) $USERNAME

echo 'ZSH successfuly configured. New terminals will be openned correctly'
