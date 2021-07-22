source ~/dotfiles/zsh/aliases
source ~/dotfiles/zsh/paths

export EDITOR=vim
export LANG=en_US.UTF-8

if [ -f ~/dotfiles/hosts/$HOST.rc ]; then
  source ~/dotfiles/hosts/$HOST.rc
fi

if [ -f ~/dotfiles/hosts/local.rc ]; then
  source ~/dotfiles/hosts/local.rc
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
