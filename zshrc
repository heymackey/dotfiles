# ZSH config
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# load zgen
source "${HOME}/.zgen/zgen.zsh"
if ! zgen save; then
  echo "Creating a zgen save"
  zgen prezto
  zgen prezto git
  zgen prezto command-not-found
  zgen prezto syntax-highlighting
  zgen zsh-users/zsh-completions source
fi