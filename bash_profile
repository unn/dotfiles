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

export EDITOR=vim

shopt -s cdspell

export HISTFILESIZE=10000
export HISTSIZE=10000
# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups
# append history entries..
shopt -s histappend

_update_ps1() {
  export PS1="$($HOME/dotfiles/repos/powerline/powerline-shell.py $?)"
}

export PROMPT_COMMAND="history -a; history -c; history -r; _update_ps1"

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi


# set PATH so it includes Support-Tools bin
if [ -d "/Users/david.stoline/Support-Tools/bin" ] ; then
    export PATH="/Users/david.stoline/Support-Tools/bin:$PATH"
fi

# set bastion function to use
function bastion { mywik ; }


# set ahtools autocomplete
complete -W '$(/Users/david.stoline/Support-Tools/aht --autocomplete)' aht
