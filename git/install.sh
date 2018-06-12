#! /usr/bin/env sh

rm -f "$HOME/.gitignore"
rm -f "$HOME/.gitconfig"

ln -sFi gitconfig "$HOME/.gitconfig"
ln -sFi gitignore "$HOME/.gitignore"
