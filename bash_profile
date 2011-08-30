source ~/dotfiles/bash/paths
source ~/dotfiles/bash/aliases
source ~/dotfiles/bash/completions

# EOP
SSH_AGENT_PID=`ps x| grep ssh-agent | grep -v grep | awk '{print $1}'`;
if [ -n "$SSH_AGENT_PID" ]; then
    export SSH_AGENT_PID;
    export SSH_AUTH_SOCK;
else
    eval `ssh-agent`;
    ssh-add;
fi

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi
