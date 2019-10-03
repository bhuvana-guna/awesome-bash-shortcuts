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

# For stashing & poping the latest stash
alias gsh="git stash"
alias gshp="git stash pop"

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