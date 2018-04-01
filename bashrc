# bashrc file written by Rafael Schreiber

# building prompt

# color codes
red='\e[1;31m'
green='\e[1;32m'
yellow='\e[1;33m'
purple='\e[1;35m'
white='\e[1;37m'
normal='\e[0;37m'

export PROMPT_COMMAND=set_prompt

set_prompt() {
    local ex=$?
    if [ $(whoami) = "root" ];
    then
        PS1="$red\u$white at$yellow \h$white in$purple \w$white \n# "
    else
        PS1="$green\u$white at$yellow \h$white in$purple \w$white \n$ "
    fi
    [[ "$ex" -ne 0 ]] && PS1="$red$ex $PS1"
    PS1="$PS1"
}

# this command clears the remaining history
cat /dev/null > ~/.bash_history

# adding folders to $PATH
PATH=$PATH:$HOME/.bin # for my personal scripts
#PATH=$PATH:[path]
export PATH

# adding custom commands
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias fucking="sudo" # hehe, you know its funny when you type fucking reboot
#alias [alias name]="[command to be performed]"
