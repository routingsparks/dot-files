#
# ~/.bashrc
#

# Set Editor
export EDITOR=vim

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# User specified aliases and functions
alias ls='ls --color=auto'
alias vi='vim'
alias ll='ls -alh'
alias hi='history | grep'
alias syshosts='cat /etc/hosts'
alias reload='. ~/.bashrc'
alias myip='curl -s http://ipecho.net/plain; echo'

# Git aliases
alias gitdiff='git diff --name only --diff-filter=U'
alias status='git status'
alias push='git push'


PS1='[\u@\h \W]\$ '
