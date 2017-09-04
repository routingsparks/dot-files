# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Set Editor
export EDITOR=vim

# User specific aliases and functions
alias vi='vim'
alias ll='ls -alh'
alias h='history | grep'
alias syshosts='cat /etc/hosts'
alias reload='.  ~/.bashrc'
