# Path to your oh-my-zsh installation.
export ZSH=/Users/devanhuapaya/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# robbyrussell
ZSH_THEME="bullet-train"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dirhistory sublime web-search)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Functions

function blog() {
    if [ -z "$1" ]
        then
            head ~/Documents/backlog.txt
    else
        vim ~/Documents/backlog.txt
    fi
}

function mkd() {
    mkdir -p "$@" && cd "$@"
}

function pr() {
    git fetch upstream pull/$@/head:pr-$@ &&
    git checkout pr-$@ &&
    git remote prune upstream;
}

function gap() {
    git add -A &&
    git commit -m $@ &&
    git push
}

function opr() {
    if [ -z "$1" ]
        then
            open https://github.ibm.com/Whitewater/paddle/pulls
    else
        open https://github.ibm.com/Whitewater/paddle/pull/$@
    fi
}

# Aliases
# Aliases - A, B, C, D...d
alias a="atom ./"
alias b="bower install"
alias c="clear"
alias code="cd ~/Documents/All\ Things\ Code/"
alias colors="open http://www.ibm.com/design/language/resources/swatch-book.shtml"
alias d="cd ~/Downloads"
alias e="open http://inbox.google.com"
alias email= "open https://mail.notes.na.collabserv.com/verse"
alias esl="gulp eslint"
alias fb="open https://www.facebook.com"
alias g="grunt serve"
alias echeat="open http://docs.emmet.io/cheat-sheet/"
alias go="google"
alias grep="gulp mocha --grep"
alias gu="gulp"
alias h="open ./"
alias i="cd ~/Documents/All\ Things\ Code/imdevan.github.io/ "
alias ig="cd ~/Documents/All\ Things\ Code/imdevan.github.io/ && stt && grunt serve"
alias j="jekyll serve --watch"
alias jams="open http://tiny.cc/2015falljams"
alias k="gulp karma"
alias l="open https://github.com/imdevan/lists"
alias m="git checkout master"
alias n="npm start"
alias o="open"
alias off="sudo shutdown -h now"
alias gi="open http://github.ibm.com/devan-huapaya"
alias p="cd ~/Documents/All\ Things\ Code/Project\ Whitewater/paddle"
alias p2="cd ~/Documents/All\ Things\ Code/Project\ Whitewater/paddle-2"
alias pw="cd ~/Documents/All\ Things\ Code/Project\ Whitewater"
alias rp="cd ~/Documents/All\ Things\ Code/Project\ Whitewater/paddle && a && open https://localhost:8443 && n"
alias s="gulp scsslint"
alias side="cd ~/Documents/All\ Things\ Code/Side\ Stuff"
alias slp="pmset sleepnow"
alias smile="open http://smile.amazon.com"
alias t="gulp test"
alias todo="atom ~/Documents/All\ Things\ Code/Project\ Whitewater/todo.md"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias tw="rainbowstream"
alias u="gulp"
alias ux="open https://app.mural.ly/t/whitewater/m/whitewater/1439227104983"
alias w="cd ~/Documents/All\ Things\ Code/Project\ Whitewater/paddle && atom ./ &&  open http://localhost:3000/ && npm start"
alias yt="youtube"
alias z="atom ~/.zshrc"
alias ra="open https://localhost:8443/reactless/teams/admin"


# Aliases - git commands
alias ga="git add -A"
alias gac="git add -A && git commit -m"
alias gb="git branch"
alias gc="git commit -m"
alias gch="git checkout"
alias gca="git commit --amend"
alias gcad="git commit --amend --date" #"Sunday Jan 10 16:20 2016 +0100"
alias gcane="git commit --amend --no-edit"
alias gcane!="git add -A && git commit --amend --no-edit && git push -f"
alias gcl="git clone"
alias gconf="git diff --name-only --diff-filter=U"
alias gd="git branch -D"
alias gfo="git fetch origin"
alias gfu="git fetch upstream"
alias ghi="open https://github.com/imdevan/"
alias ghp="open https://github.ibm.com/whitewater/paddle"
alias ghdp="open https://github.ibm.com/devan-huapaya/paddle"
alias ghpp="open https://github.ibm.com/whitewater/paddle/pulls"
alias gl="git log -1"
alias gps="git push --set-upstream origin"
alias gpu="git pull"
alias gr="git rebase"
alias gra="git rebase --abort"
alias grc="git rebase --continue"
alias greset!="git fetch upstream && git reset --hard upstream/master && git push origin master --force"
alias gru="git rebase upstream/master"
alias gs="git stash"
alias gsl="git stash list"
alias gsp="git stash pop"
alias gstats="git status"
alias rebase="git fetch upstream && git rebase upstream/master"
# alias pr="git pr "

# Aliases - npm commands
# alias n="npm start" in abc
alias ni="npm install"
alias nis="npm i --save"
alias nisd="npm i --save-dev"
alias np="npm prune"
alias nt="npm test"
alias sni="sudo npm install"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
