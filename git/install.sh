#! /usr/bin/env sh

rm -f "$HOME/.gitignore"
rm -f "$HOME/.gitconfig"

ln -sFi "$PWD/gitconfig" "$HOME/.gitconfig"
ln -sFi "$PWD/gitignore" "$HOME/.gitignore"
