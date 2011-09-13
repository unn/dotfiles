source ~/dotfiles/bash/paths
source ~/dotfiles/bash/aliases
source ~/dotfiles/bash/completions

export OS=`uname`

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
