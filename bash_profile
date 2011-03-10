# MAMP config
export PATH=/Applications/MAMP/bin/php5.2/bin:/Applications/MAMP/Library/bin:$PATH

#memcache
EVENT_NOKQUEUE=1

# Android SDK
export PATH=/Users/david/Sites/eclipse/android-sdk-mac_86:$PATH

# Ruby Gems
export PATH=/Users/david/.gem/ruby/1.8/bin:$PATH

# Drupal Settings
export CVSROOT=:pserver:dstol@cvs.drupal.org:/cvs/drupal-contrib

# EOP
SSH_AGENT_PID=`ps x| grep ssh-agent | grep -v grep | awk '{print $1}'`;
if [ -n "$SSH_AGENT_PID" ]; then
    export SSH_AGENT_PID;
    export SSH_AUTH_SOCK;
else
    eval `ssh-agent`;
    ssh-add;
fi

# Aliases
alias ..='cd ..'
alias cd..='cd ..'
alias ...='cd ../../../'
alias du='du -kh'
alias df='df -kTh'
alias mkdir='mkdir -p'
alias which='type -a'
alias h='history'
alias j='jobs -l'

# The 'ls' family
alias ll="ls -l --group-directories-first"
alias ls='ls -hFG'  # add colors for filetype recognition
alias la='ls -Al'          # show hidden files
alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lt='ls -ltr'         # sort by date, most recent last
alias lm='ls -al | more'   # pipe through 'more'
alias lr='ls -lR'          # recursive ls
alias tree='tree -Csu'     # nice alternative to 'recursive ls'

# Functions
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)  tar xjf $1    ;;
      *.tar.gz) tar xzf $1    ;;
      *.bz2)    bunzip2 $1    ;;
      *.rar)    rar x $1    ;;
      *.gz)   gunzip $1   ;;
      *.tar)    tar xf $1   ;;
      *.tbz2)   tar xjf $1    ;;
      *.tgz)    tar xzf $1    ;;
      *.zip)    unzip $1    ;;
      *.Z)    uncompress $1 ;;
      *)      echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

ziprm () {
  if [ -f $1 ] ; then
    unzip $1
    rm $1
  else
    echo "Need a valid zipfile"
  fi
}

psgrep() {
  if [ ! -z $1 ] ; then
    echo "Grepping for processes matching $1..."
    ps aux | grep $1 | grep -v grep
  else
    echo "!! Need name to grep for"
  fi
}

mine() {
  sudo chown -R ${USER} ${1:-.}
}

cdl() {
  if [ "$1" ]
  then builtin cd "$1" && ll
  else builtin cd && ll
  fi
}

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi


##
# Your previous /Users/david/.bash_profile file was backed up as /Users/david/.bash_profile.macports-saved_2011-02-03_at_14:10:49
##

# MacPorts Installer addition on 2011-02-03_at_14:10:49: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

