# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=100000
setopt appendhistory autocd extendedglob
setopt EXTENDED_HISTORY		# puts timestamps in the history
 
 
BLACK="%{"$'\033[01;30m'"%}"
GREEN="%{"$'\033[01;32m'"%}"
RED="%{"$'\033[01;31m'"%}"
YELLOW="%{"$'\033[01;33m'"%}"
BLUE="%{"$'\033[01;34m'"%}"
BOLD="%{"$'\033[01;39m'"%}"
NORM="%{"$'\033[00m'"%}"
 
autoload -Uz vcs_info
 
# prompt (if running screen, show window #)
if [ x$WINDOW != x ]; then
    export PS1="$WINDOW:%~%# "
else
      export PS1="
<${YELLOW}%~${NORM}>
${RED}%n${YELLOW}@${BLUE}%U%m%u$%(!.#.$) "
    #export PS1="[${RED}%n${YELLOW}@${BLUE}%U%m%u$:${GREEN}%2c${NORM}]%(!.#.$) "
    #right prompt - time/date stamp
    #export RPS1="${GREEN}(%D{%m-%d %H:%M})${NORM}"
    # this right prompt is for any kind of repository info - svn, git, mercurial ,etc. courtesy of vcs_info
    export RPS1="${YELLOW}%1v${NORM}"
fi
 
# format titles for screen and rxvt
function title() {
  # escape '%' chars in $1, make nonprintables visible
  a=${(V)1//\%/\%\%}
 
  # Truncate command, and join lines.
  a=$(print -Pn "%40>...>$a" | tr -d "\n")
 
  case $TERM in
  screen)
    print -Pn "\ek$a:$3\e\\"      # screen title (in ^A")
    ;;
  xterm*|rxvt)
    print -Pn "\e]2;$2 | $a:$3\a" # plain xterm title
    ;;
  esac
}
 
# precmd is called just before the prompt is printed
function precmd() {
  title "zsh" "$USER@%m" "%55<...<%~"
  psvar=()
  vcs_info
  [[ -n $vcs_info_msg_0_ ]] && psvar[1]="$vcs_info_msg_0_"
}
 
# preexec is called just before any command line is executed
function preexec() {
  title "$1" "$USER@%m" "%35<...<%~"
}
 

# vi editing
# this prevents me from deleting a word using ESC-Backspace
#bindkey -v
 
# colorful listings
zmodload -i zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
 
autoload -U compinit
compinit
 
# aliases

alias j=jobs
if ls -F --color=auto >&/dev/null; then
  alias ls="ls --color=auto -F"
else
  alias ls="ls -F"
fi
alias ll="ls -l"
alias ..='cd ..'
alias .='pwd'
alias grep='grep -E --color=always'

 
# functions
setenv() { export $1=$2 }  # csh compatibility
 
#bash style ctrl-a (beginning of line) and ctrl-e (end of line)
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line
# key bindings
 
 
export EDITOR="/usr/local/bin/mate -w"

PATH=/usr/local/bin:$PATH
