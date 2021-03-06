#!/bin/bash

if [ -f .env ]; then
  export $(cat .env | xargs)
else
  echo "You need to write a .env file. Use example.env to create yours"
  exit 1
fi

if test "x$(id -u)" != "x0"; then
  echo "Please run as root"
  exit 2
fi

if ! id "$USERNAME" >/dev/null 2>&1; then
  echo "Informed '$USERNAME' in .env file does not exists"
  exit 3
fi

USER_HOME=$(eval echo "~$USERNAME")
INSTALL_DIR=$(realpath $(dirname "$0"))

apt-get update

set -e

. ./scripts/install_deps.sh

su $USERNAME -- \
  ./scripts/configure_git.sh \
  ./scripts/vim/configure.sh

. ./scripts/zsh/install.sh
. ./scripts/gcloud.sh
