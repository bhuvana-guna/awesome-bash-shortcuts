
#to know the ip address
alias myip="curl http://ipecho.net/plain; echo"


#To see the list of mounted hard drives
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

    #For mac   TO-DO : TEST THIS
    #alias mnt='mount | grep -E ^/dev | column -t'