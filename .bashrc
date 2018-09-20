# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#=======================================
# User specific aliases and functions: =
#=======================================

#
# Traversing up directories easily ...
#
alias ..='cd ..'
alias ...='cd ../../..'
alias ....='d ../../../../'

#
# Can't work without this one ...
#
alias cls=clear

#
# Confirmation when copying/linking/moving:
#
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'

#
# Using `column`:
#
alias ct='column -t'
alias dfc='df -hPT | column -t'
alias mount='mount | column -t'

#
# Date/time:
#
alias d='date +%F'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%m-%d-%Y"'

#
# Docker:
#
alias dceit='docker container exec --interactive --tty'
alias dci='docker container inspect'
alias dcls='docker container list'
alias dclsa='docker container list --all'
alias dcl='docker container logs'
alias dcr='docker container run'
alias dcrd='docker container run -d'
alias dcrit='docker container run --interactive --tty'
alias dcrm='docker container rm'
alias dcrmf='docker contianer rm --force'
alias dcs='docker container stop'
alias dcsai='docker container start --attach --interactive'
alias dcst='docker container stats'
alias dct='docker container top'
alias dimi='docker image inspect'
alias dimls='docker image list'
alias dimrm='docker image rm'
alias dimrmf='docker image rm --force'
alias dp='docker pull'

#
# Multicolor `diff` (requires `colordiff` to be installed):
#
alias diff='colordiff'
alias dir='ls -philFa --color=auto'

#
# Colorized greps:
#
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#
# Git commands:
#
alias gs='git status'
alias gla='git log --all --oneline --decorate --graph'
alias gdt='git difftool'
alias gmt='git mergetool'
#
# Git `stash`:
#
alias gsa='git stash apply'
alias gsc='git stash clear'
alias gsl='git stash list'
alias gspush='git stash push'
alias gspull='git stash pull'
alias gss='git stash show'

alias h='history'

#
# Faster than typing the actual command:
#
alias sbp=". ~/.bash_profile"

#
# Wingware IDE:
#
alias wware="wing6.1 &"

#
# Managing multiple AWS profile configurations:
# (Requires the ._awsAliases script)
#
. ~/._awsAliases
alias awsall="_awsListAll"
alias awsp="_awsSwitchProfile"
alias awswho="aws configure list"

#
# GitHub repos:
#
Hub_Repos=~/Hub_repos

#
# GitLab_repos:
#
Lab_Repos=~/Lab_repos

#
# MagicMonty bash-git-prompt:
#
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Solarized
source $Hub_Repos/bash-git-prompt/gitprompt.sh

#
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#
export PATH="$PATH:$HOME/.rvm/bin"

#
# Google Cloud Platform:
#
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/andrewmp/Google_Cloud_SDK/path.bash.inc' ]; then source '/home/andrewmp/Google_Cloud_SDK/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/andrewmp/Google_Cloud_SDK/completion.bash.inc' ]; then source '/home/andrewmp/Google_Cloud_SDK/completion.bash.inc'; fi

#
# SDKMAN rocks! :)
#
# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/andrewmp/.sdkman"
[[ -s "/home/andrewmp/.sdkman/bin/sdkman-init.sh" ]] && source "/home/andrewmp/.sdkman/bin/sdkman-init.sh"
