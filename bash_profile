export OS=`uname`

source ~/dotfiles/bash/aliases
source ~/dotfiles/bash/paths
source ~/dotfiles/bash/completions

bind 'set completion-ignore-case on'
bind 'set completion-prefix-display-length 2'
bind 'set completion-map-case on'
bind 'set completion-query-items 9001'
bind 'set show-all-if-ambiguous on'
bind 'set show-all-if-unmodified on'
bind 'set mark-directories on'
bind 'set mark-symlinked-directories on'
bind 'set page-completions off'
bind 'set visible-stats on'

export HISTFILESIZE=10000
export HISTSIZE=10000
export EDITOR=vim

shopt -s cdspell

_update_ps1() {
  export PS1="$($HOME/dotfiles/repos/powerline/powerline-bash.py $?)"
}

export PROMPT_COMMAND="_update_ps1"

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
