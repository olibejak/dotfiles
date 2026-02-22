#
# ~/.bashrc
#

# Git repository
source $HOME/.git-prompt.sh
eval "$(dircolors ~/.dircolors)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
# PS1='[\u@\h \W]\$ '
PS1='\[\e[1;37;40m\]\u\[\e[0;90;40m\]@\[\e[1;31;40m\]\h\[\e[0m\]:\[\e[1;33m\]\w\[\e[1m\]\[\e[1;97m\]$(__git_ps1 " (%s)")\[\e[0m\] \$ '
# PS1='\[\e[1;37;40m\]\u@\h\[\e[0m\]:\[\e[0;37m\]\w\[\e[0m\]\$ '
#PS1='\u@\h \w$(__git_ps1 " (%s)")\$ '
