#!/bin/bash

DIRECTORY=~/.config

if [ ! -d "$DIRECTORY/nvim" ]; then
  mkdir -p $DIRECTORY/nvim
fi

pushd /tmp
git clone https://github.com/jersmith/my-neovim-init.git

pushd my-neovim-init
cp -r nvim $DIRECTORY

popd
rm -rf my-neovim-init
popd
