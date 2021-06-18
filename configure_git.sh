#!/bin/sh

git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-manager-core.exe"

su $USERNAME -c "git config --global user.name $GIT_NAME"
su $USERNAME -c "git config --global user.email $GIT_EMAIL"
su $USERNAME -c 'git config --global push.default current'
su $USERNAME -c 'git config --global core.editor vim'

echo 'Git credendials and user configured.'