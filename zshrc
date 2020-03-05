source ~/dotfiles/zsh/aliases
source ~/dotfiles/zsh/paths

export EDITOR=vim
export LANG=en_US.UTF-8

export ZSH=/Users/david/.oh-my-zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="powerline"
#POWERLINE_RIGHT_B="none"
#POWERLINE_HIDE_USER_NAME="true"
#POWERLINE_HIDE_HOST_NAME="true"
#POWERLINE_DISABLE_RPROMPT="true"
#POWERLINE_HIDE_GIT_PROMPT_STATUS="true"
#POWERLINE_PATH="short"

ZSH_THEME="powerlevel9k/powerlevel9k"
P9K_COLOR_SCHEME='light'
P9K_LEFT_PROMPT_ELEMENTS=(dir vcs status)
P9K_DISABLE_RPROMPT=true
P9K_RIGHT_PROMPT_ELEMENTS=(root_indicator kubecontext)
P9K_DIR_SHORTEN_LENGTH=2
P9K_DIR_SHORTEN_DELIMITER=""
P9K_DIR_SHORTEN_STRATEGY="truncate_from_right"
P9K_MODE='nerdfont-complete'
DEFAULT_BACKGROUND=235
P9K_LEFT_SEGMENT_SEPARATOR_ICON="\uE0B4"
P9K_LEFT_SUBSEGMENT_SEPARATOR_ICON="%F{$(( $DEFAULT_BACKGROUND - 2 ))}|%f"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
