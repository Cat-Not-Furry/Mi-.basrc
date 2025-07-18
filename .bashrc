#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# bash-completion
complete -cf sudo

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# FZF (fuzzy finder)
if [ -f .fzf.bash ]; then
  source .fzf.bash
fi

# === Colors ===
BLACK='\[\e[0;30m\]'
RED='\[\e[0;31m\]'
GREEN='\[\e[0;32m\]'
YELLOW='\[\e[0;33m\]'
BLUE='\[\e[0;34m\]'
MAGENTA='\[\e[0;35m\]'
CYAN='\[\e[0;36m\]'
WHITE='\[\e[0;37m\]'
RESET='\[\e[0m\]'
BOLD='\[\e[1m\]'

# alias ls='ls --color=auto'
# alias ll='ls -lah --color=auto'

alias ','='cd ..'
alias '.'='cd'

alias ls='exa --icons -lh --color=always'
alias l='exa --icons --color=always'
alias grep='grep --color=auto'
alias ver='bat'
alias ñ='pwd'
alias o='nvim'
# eval "$(thefuck --alias)"
# eval "$(starship init bash)"
# powerline -p

#PS1="${BOLD}╭[\u]${RESET}${RED}@${RESET}[\h]${MAGENTA} → ${BLUE}\W\n${RESET}│\n╰ "
PS1="${BOLD}╭[\u]${RESET}${RED}@${RESET}[\h]${MAGENTA} → ${BLUE}\W\n${RESET}╰ "

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
