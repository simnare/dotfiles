#! /usr/bin/env zsh

rm -fr "${ZDOTDIR:-$HOME}/.zprezto"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md; do
  ln -sfn "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

ln -sFi "$PWD/config" "$HOME/.config/zsh"
ln -sfn "$PWD/zshrc" "$HOME/.zshrc"
ln -sfn "$PWD/zpreztorc" "$HOME/.zpreztorc"
