# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Set Editor
export EDITOR=vim

# Set PS1
export PS1="\[\033[38;5;10m\][\u\[\]\[\033[38;5;15m\]@\[\]\[\033[38;5;10m\]\h\[\]\[\033[38;5;15m\] \[\]\[\033[38;5;13m\]\W\[\]\[\033[38;5;10m\]]\[\]\[\033[38;5;15m\]\$ \[\]"



# User specific aliases and functions
alias vi='vim'
alias ll='ls -alh'
alias h='history | grep'
alias syshosts='cat /etc/hosts'
alias reload='.  ~/.bashrc'
alias stig='/usr/java/jdk1.8.0_181-amd64/jre/bin/java -jar ~/Downloads/STIGViewer-2.7.1.jar'
