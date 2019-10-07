#!/bin/bash

alias e="exit"
alias s="sudo $1"
alias b="cd .."
alias c="clear"
alias t="touch $1"
alias md="mkdir $1"
alias rd="rmdir $1"
alias nn="nano $1"


# Easier navigation: .., ..., ...., .....
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

#home
alias h="cd ~"

#common folders
alias doc="cd ~/Documents"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"

#change this to your project directory
alias proj="cd ~/Documents/projects"

#apt
alias a="sudo apt $1"
alias ai="sudo apt install $1"

# opens explorer
alias ox="xdg-open $1"
alias op="xdg-open ."

#open vscode
alias v="code $1"

#activate virtual environment
alias act="source $1/bin/activate"

# Search history
qh() {
    #           ┌─ enable colors for pipe
    #           │  ("--color=auto" enables colors only if
    #           │  the output is in the terminal)
    grep --color=always "$*" "$HISTFILE" |       less -RX
    # display ANSI color escape sequences in raw form ─┘│
    #       don't clear the screen after quitting less ─┘
}
