#!/bin/sh

git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-manager-core.exe"

git config --global user.name $GIT_NAME
git config --global user.email $GIT_EMAIL
git config --global push.default current
git config --global core.editor vim

echo 'Git credendials and user configured.'
