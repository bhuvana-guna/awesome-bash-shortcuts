# git commands
alias g="git $1"

alias gs="git status"
alias gl="git log"
alias gb="git branch"
alias gd="git diff $1 $2"

alias gi="git init $1"
alias gr="git remote $1"
alias gf="git fetch $1"
alias gm="git merge $1"

alias grs="git reset $1" 

alias gco="git checkout $1"
alias gcb="git checkout -b $1"

alias gcl="git clone $1"

alias ga="git add $1"
alias gaa="git add ."
alias gcm="git commit -m 'small fixes'"
alias gp="git push $1 $2"
alias gpo="git push origin $1"
alias gpom="git push origin master"

# For amend the changes to last commit
alias gam="git commit --amend"


alias gplom="git pull origin master"
alias gpl="git pull $1 $2"

# For stashing & poping the latest stash
alias gsh="git stash"
alias gshp="git stash pop"

# git commit  
## usage
# gc "commit message"
function gc(){
  git commit -m "$1"
}

# git amend with updated author
## usage
# gama "John Doe <john@doe.org>"
function gama(){
    git commit --amend --author="$1"
}

# git add commit push  
## usage
# gacp "commit message"
function gacp() {
    echo "This will add, commit and push all the files to the master branch."
    read -p "Do you want to proceed? y/n " -n 1 -r
    if [[ "$REPLY" =~ ^([yY][eE][sS]|[yY])+$ ]]
    then
        git add .
        git commit -m "$1"
        git push origin master
    else
        echo -e "\n Quit."
    fi
    
}


# git add commit push default 
## usage
# gacpd
function gacpd() {
    echo "This will add, commit and push all the files to the master branch with the comment 'small fixes'"
    read -p "Do you want to proceed? y/n " -n 1 -r
    if [[ "$REPLY" =~ ^([yY][eE][sS]|[yY])+$ ]]
    then
        git add .
        git commit -m "small fixes"
        git push origin master
    else
        echo -e "\n Quit."
    fi
}

# git add commit push branch
## usage
# gacpb "commit message" branch-name
function gacpb() {
    echo "This will add, commit and push all the files to the branch specified."
    read -p "Do you want to proceed? y/n " -n 1 -r
    if [[ "$REPLY" =~ ^([yY][eE][sS]|[yY])+$ ]]
    then
        git add .
        git commit -m "$1"
        git push origin $2
    else
        echo -e "\n Quit."
    fi
}

# Find commits by commit message
    cm = "!f() { \
        git log --pretty=custom --decorate --date=short --grep=\"$1\"; \
    }; f"


# Credit an author on the latest commit.
    credit = "!f() { \
        if [ -n \"$1\" ] && [ -n \"$2\" ]; then \
            git commit --amend --author \"$1 <$2>\" -C HEAD; \
        fi \
    }; f"
# Making git clone less tedious
# Instead of `git clone git@github.com:org/repo.git` do:
# `clone org repo` or `clone username repo`

clone() {
    git clone git@github.com:$1/$2.git
}

