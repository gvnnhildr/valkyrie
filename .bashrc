
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# turns on vi mode. acts as normal prompt, but you
# also have 'normal mode' shortcuts available
set -o vi

PS1='\w\e[1;35m🍄\e[0m'
#PS1='\w\e[1;31m🔥\e[0m'
#PS1='\e[1;31mλ\e[0m \w \$ '

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export HISTCONTROL=ignoredups:erasedups
export EDITOR="/sbin/emacsclient:$EDITOR"

alias ls='ls --color=auto'
alias ll='ls -alF --color=auto'
alias grep='grep --color=auto'
alias cat='cat -n'
alias pac='sudo pacman -Syu'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias moon='curl wttr.in/moon'
alias weather='wttr curl wttr.in'
alias locate='plocate'
alias neo='clear && neofetch'
