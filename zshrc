# ZSH config
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# load zgen
source "${HOME}/.zgen/zgen.zsh"
if ! zgen saved; then
  echo "Creating a zgen save"
  zgen prezto
  zgen prezto git
  zgen prezto command-not-found
  zgen prezto syntax-highlighting
  zgen prezto zsh-users/zsh-completions src
fi

# load aliases
source "${HOME}/.scripts/aliases.sh"

COMPLETION_WAITING_DOTS="true"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# exenv
export PATH="$HOME/.exenv/bin:$PATH"
if which exenv > /dev/null; then eval "$(exenv init -)"; fi
