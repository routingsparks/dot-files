# .bashrc

###############################################################################
# sparky's .bashrc
# created:  20190204
# modified: 20191209
###############################################################################

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

###############################################################################
# Set PATH variable
###############################################################################
export PATH=$HOME/bin/:$PATH 

###############################################################################
# Set Editor
###############################################################################
export EDITOR=vim

###############################################################################
# Set PS1
###############################################################################
export PS1="\[\033[38;5;10m\][\u\[\]\[\033[38;5;15m\]@\[\]\[\033[38;5;10m\]\h\[\]\[\033[38;5;15m\] \[\]\[\033[38;5;13m\]\W\[\]\[\033[38;5;10m\]]\[\]\[\033[38;5;15m\]\$ \[\]"

###############################################################################
# Configure Python VirtualEnvWrapper
###############################################################################
#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/projects/python
#source /usr/bin/virtualenvwrapper.sh


###############################################################################
# User specific aliases and functions
###############################################################################
alias vi='vim'
alias ls='ls --color=auto'
alias ll='ls -alh --color=auto'
alias h='history | grep'
alias syshosts='cat /etc/hosts'
alias reload='.  ~/.bashrc'
alias r="ranger ~/"
alias clip="xsel --clipboard"
########################################
# youtube-dl aliases
########################################
alias ytdl-video='youtube-dl --output "%(title)s.%(ext)s" -i -f mp4'
alias ytdl-playlist='youtube-dl --output "%(title)s.%(ext)s" -i -f mp4 --yes-playlist'
alias ytdl-music='youtube-dl --output "%(title)s.%(ext)s" -x --audio-format mp3 --audio-quality 0'
########################################
# vimwiki aliases
########################################
alias vimwiki-personal='vim $HOME/vimwiki/personal-md/index.md'
alias vimwiki-work='vim $HOME/vimwiki/work-md/index.md'
########################################
# git aliases
########################################
alias ga='git add .'
alias gc='git commit -a -m'
alias gp='git push'
########################################
# audio-output aliases
########################################
alias audio-hdmi="pactl set-card-profile 0 output:hdmi-stereo-extra1"
alias audio-laptop="pactl set-card-profile 0 output:analog-stereo"

