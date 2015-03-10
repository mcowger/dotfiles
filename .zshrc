
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...


source /usr/local/bin/virtualenvwrapper.sh



# Customize to your needs...

export PIN=91169116
alias dis="sudo ~/.vpn/vpn-oc7.sh D"
alias coneast="sudo ~/.vpn/vpn-oc7.sh C cowgem east $PIN"
alias conwest="sudo ~/.vpn/vpn-oc7.sh C cowgem west $PIN"
alias consouth="sudo ~/.vpn/vpn-oc7.sh C cowgem south $PIN"
alias con="consouth"

PATH=/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
export PATH=~/.local/bin:~/Library/Python/2.7/bin:~/pebble-dev/PebbleSDK-2.0-BETA6/bin:/Volumes/DataDisk/mcowger/jython2.5.2/bin:/usr/local/bin:$PATH

bindkey "^[[1;3D" backward-word # alt + <-
bindkey "^[[1;3C" forward-word # alt + ->
bindkey -s "^D" "exit\n"


export LESS=-RX
export PROJECT_HOME=$HOME/Projects


# Add homebrew to the completion path
fpath=("/usr/local/bin/" $fpath)

# why would you type 'cd dir' if you could just type 'dir'?
setopt AUTO_CD

# Now we can pipe to multiple outputs!
setopt MULTIOS

# This makes cd=pushd
setopt AUTO_PUSHD

# This will use named dirs when possible
setopt AUTO_NAME_DIRS

# If we have a glob this will expand it
setopt GLOB_COMPLETE
setopt PUSHD_MINUS

# No more annoying pushd messages...
# setopt PUSHD_SILENT

# blank pushd goes to home
setopt PUSHD_TO_HOME

# this will ignore multiple directories for the stack. Useful? I dunno.
setopt PUSHD_IGNORE_DUPS

# 10 second wait if you do something that will delete everything. I wish I'd had this before...
setopt RM_STAR_WAIT

# use magic (this is default, but it can't hurt!)
setopt ZLE

setopt NO_HUP

# only fools wouldn't do this ;-)
export EDITOR="atom"

setopt IGNORE_EOF

# If I could disable Ctrl-s completely I would!
setopt NO_FLOW_CONTROL



# Case insensitive globbing
setopt NO_CASE_GLOB

# Be Reasonable!
setopt NUMERIC_GLOB_SORT

# I don't know why I never set this before.
setopt EXTENDED_GLOB

# hows about arrays be awesome? (that is, frew${cool}frew has frew surrounding all the variables, not just first and last
setopt RC_EXPAND_PARAM

# Who doesn't want home and end to work?
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line

# Incremental search is elite!
bindkey -M vicmd "/" history-incremental-search-backward
bindkey -M vicmd "?" history-incremental-search-forward

# Search based on what you typed in already
bindkey -M vicmd "//" history-beginning-search-backward
bindkey -M vicmd "??" history-beginning-search-forward

bindkey "\eOP" run-help

# oh wow! This is killer... try it!
bindkey -M vicmd "q" push-line

# it's like, space AND completion. Gnarlbot.
bindkey -M viins ' ' magic-space

prompt mcowger
