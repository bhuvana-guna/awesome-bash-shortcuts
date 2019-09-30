#!/bin/bash

alias e="exit"
alias s="sudo $1"
alias b="cd .."
alias c="clear"
alias t="touch $1"
alias md="mkdir $1"
alias rd="rmdir $1"
alias nn="nano $1"

#change this to your project directory
#alias proj="cd /home/user/Documents/projects/"

#apt
alias a="sudo apt $1"
alias ai="sudo apt install $1"

# opens explorer
alias ox="xdg-open $1"
alias op="xdg-open ."

#open vscode
alias v="code $1"

# git commands
alias g="git $1"

alias gs="git status"
alias gl="git log"
alias gd="git diff $1 $2"

alias gi="git init $1"
alias gr="git reset $1"

alias gco="git checkout $1"
alias gcb="git checkout -b $1"

alias gcl="git clone $1"

alias ga="git add $1"
alias gaa="git add ."
alias gc="git commit -m '$1'"
alias gcm="git commit -m 'small fixes'"
alias gp="git push $1 $2"
alias gpo="git push origin $1"
alias gpom="git push -u origin master"

# git add commit push  
## usage
# gacp "commit message"
function gacp() {
    git add .
    git commit -a -m "$1"
    git push -u origin master
}

# git add commit push default 
## usage
# gacpd
function gacpd() {
    git add .
    git commit -a -m "small fixes"
    git push -u origin master
}

#npm commands
alias n="npm $1"
alias ns="npm start"
alias nin="npm init"
alias nt="npm test $1"


#npm install

# install as dev dependency
alias nid="npm i -D $1"

# install globally
alias nig="npm i -g $1"

#just install
alias ni="npm i $1"

