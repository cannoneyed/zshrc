# Path to your oh-my-zsh installation.
export ZSH=/Users/andrewcoenen/.oh-my-zsh

ZSH_THEME="muse"
plugins=(git npm docker)

source $ZSH/oh-my-zsh.sh

# The original version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
PATH="/Users/andrewcoenen/development/flutter/bin:${PATH}"
# PATH=~/anaconda3/bin:$PATH
export PATH

export EDITOR='code'

#Meta alias's
alias prof="code ~/.zshrc"
alias reprof=". ~/.zshrc"
alias chrome="open -a Google\ Chrome"
alias chr="open -a Google\ Chrome"
alias de="cd ~/Desktop"
alias js="bundle exec jekyll serve --watch"
alias jb="bundle exec jekyll build"

alias cannoneyed="cd ~/cannoneyed"

#Python
alias python2="/usr/local/opt/python@2/bin/python"

#docker alias
alias dc="docker-compose"

#git alias
alias gb="git branch"
alias gc="git commit"
alias gca="git commit --amend"
alias gcm="git commit -m"
alias gs="git status"
alias ga="git add"
alias gpo="git push origin"
alias gpu="git push upstream"
alias gco="git checkout"
alias gcp="git cherry-pick"
alias gpom="git push origin master"
alias grv="git remote -v"
alias gh="git hist"
alias gl="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"
alias glu="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias git=hub
alias gbo="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname) %(committerdate) %(authorname)' | sed 's/refs\/heads\///g'"
alias gacm="git add .; git commit -m"

unalias gd
function gd() {
    if [ -n "$1" ]
    then
        git diff --color "$1" | diff-so-fancy | less --tabs=4 -RFX
    else
        git diff --color | diff-so-fancy | less --tabs=4 -RFX
    fi
}

alias gp="git push"
alias gpl="git pull"
alias gplo="git pull origin"
alias gf="git fetch"

alias kan="killall node"
ka () {
  killall "$1"
}

# myIP address
function myip() {
    ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
    ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
    ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/andrewcoenen/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/andrewcoenen/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/andrewcoenen/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/andrewcoenen/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

export PATH="/usr/local/opt/ruby/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
