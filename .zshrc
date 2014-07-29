ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mh"

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

source /usr/local/bin/virtualenvwrapper.sh



plugins=(git brew textmate github osx pip python redis-cli tmux themes history-substring-search extract battery sudo stt virtualenvwrapper)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export EDITOR="/usr/local/bin/mate -w"

ec2() {
    ssh -i ~/.ssh/id_dsa.amazon ec2-user@"$*"
}

alias dis="sudo ~/.vpn/vpn.sh D cowgem"
alias con="sudo ~/.vpn/vpn.sh C cowgem"

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin


bindkey "^[[1;3D" backward-word # alt + <-
bindkey "^[[1;3C" forward-word # alt + ->


export LESS=-RX
export PROJECT_HOME=$HOME/Projects
