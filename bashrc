# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

genpwd() {
    local len=$1
    [ "$1" == "" ] && len=20
    tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${len}
}

export FOURT="\[\$(tput setaf 6)\]"
export YELLOW="\[\$(tput setaf 3)\]"
export GREEN="\[\$(tput setaf 2)\]"
export RED="\[\$(tput setaf 1)\]"
export CL_BOLD="\[\$(tput bold)\]"
export NORM="\[\$(tput sgr0)\]"

alias cal="cal -m"

#function parse_git_branch {
#    git branch --no-color 2> /dev/null |\
#        sed -e '/^[^*]/d' -e "s/* \(.*\)/[\$(tput setaf 3)\1\$(tput sgr0)] /"
#}

export PROMPT_COMMAND='export PS1="╔ [$GREEN\u@\h $RED\W$NORM] \
$(parse_git_branch)[$FOURT$(date +"%d.%m.%y %H:%M:%S")$NORM]\n\
╚ $(if [ "$EUID" -eq "0" ]; then echo "#"; else echo "$"; fi) "'

