#! /usr/bin/env zsh

brew install starship

ln -sFi "$PWD/config" "$HOME/.config/zsh"
ln -sfn "$PWD/zshrc" "$HOME/.zshrc"
ln -sFi "$PWD/starship.toml" "$HOME/.config/starship.toml"
