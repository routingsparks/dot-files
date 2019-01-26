#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set PATH variable
export PATH=$HOME/bin/:$PATH 

# Set Editor
export EDITOR=vim

# Set PS1
export PS1="\[\033[38;5;10m\][\u\[\]\[\033[38;5;15m\]@\[\]\[\033[38;5;10m\]\h\[\]\[\033[38;5;15m\] \[\]\[\033[38;5;13m\]\W\[\]\[\033[38;5;10m\]]\[\]\[\033[38;5;15m\]\$ \[\]"



# User specific aliases and functions
alias vi='vim'
alias ls='ls --color=auto'
alias ll='ls -alh --color=auto'
alias h='history | grep'
alias syshosts='cat /etc/hosts'
alias reload='.  ~/.bashrc'
alias stig='/usr/java/jdk1.8.0_181-amd64/jre/bin/java -jar ~/Downloads/STIGViewer-2.7.1.jar'
alias ytdl='youtube-dl -i -f mp4'
alias ytdl-playlist='youtube-dl -i -f mp4 --yes-playlist'
alias vimwiki-personal='vim $HOME/vimwiki/personal.wiki'
