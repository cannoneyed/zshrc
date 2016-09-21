# Path to your oh-my-zsh installation.
export ZSH=/Users/andycoenen/.oh-my-zsh

ZSH_THEME="muse"
plugins=(git npm docker)

source $ZSH/oh-my-zsh.sh

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

export EDITOR='atom'

#Meta alias's
alias prof="atom ~/.zshrc"
alias reprof=". ~/.zshrc"
alias chrome="open -a Google\ Chrome"
alias chr="open -a Google\ Chrome"
alias de="cd ~/Desktop"
alias js="bundle exec jekyll serve --watch"
alias jb="bundle exec jekyll build"

alias pat="cd ~/patreon"
alias patw="cd ~/patreon/webdev"
alias patp="cd ~/patreon/webdev/code/patreon_py"
alias patpy="cd ~/patreon/webdev/code/patreon_py"
alias patr="cd ~/patreon/webdev/code/patreon_react_features"
alias patc="cd ~/patreon/webdev/code/patreon_webclient"
alias simba="ssh patreon@simba.patreon.com"

alias cannoneyed="cd ~/cannoneyed"

#Python
alias python="python3"

#docker alias
alias dc="docker-compose"

#git alias
alias gb="git branch"
alias gc="git commit"
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
        git -c color.ui=always --no-pager diff "$1" | sed -E 's/(--- a\/|\+\+\+ b\/(.+))//g'
    else
        git -c color.ui=always --no-pager diff | sed -E 's/(--- a\/|\+\+\+ b\/(.+))//g'
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
