#!/bin/sh

case "$(uname -s)" in
  Linux*)
    cp ./linux/.bashrc $HOME/.bashrc
    cp ./linux/.zshrc $HOME/.zshrc
    ;;
  Darwin*)
    cp ./macos/.bashrc $HOME/.bashrc
    cp ./macos/.zshrc $HOME/.zshrc
    ;;
esac

mkdir -p $HOME/.omp/themes
cp ./common/tupl.omp.json $HOME/.omp/themes/tupl.omp.json
command -v git > /dev/null 2>&1 && cp ./common/.gitconfig $HOME/.gitconfig
