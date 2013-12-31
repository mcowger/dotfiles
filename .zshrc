# to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="nanotech"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=7

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="false"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

DISABLE_UPDATE_PROMPT="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(git brew textmate github osx pip python redis-cli tmux z themes history-substring-search extract battery sudo)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export EDITOR="/usr/bin/rmate -w"

snapcli(){
  sudo /usr/snapcli/snapcli
}

naviseccli() {
  /opt/Navisphere/bin/naviseccli -User sysadmin -Password 'P@ssword1!' -Scope 0 -h 10.5.132.91 $*
}

ec2() {
    ssh -i ~/.ssh/id_dsa.amazon ec2-user@"$*"
}

assh() {
  ~/.autossh_wrapper $*
}

PATH=/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=~/pebble-dev/PebbleSDK-2.0-BETA2/bin:/Volumes/DataDisk/mcowger/jython2.5.2/bin:/usr/local/bin:$PATH

export PROMPT='%F{blue}[`hostname -s`]%f %F{green}%2c%f: '
#export RPROMPT="$(git_prompt_info) %F{blue}] %F{green}%D{%L:%M} %F{yellow}%D{%p}%f %F{green}$(battery_pct_remaining)%%%f"
export RPROMPT="$(git_prompt_info) %F{blue}]%f"



