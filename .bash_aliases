alias python=python3
alias vim=nvim

alias upd='sudo apt update && sudo apt upgrade'

alias ve='virtualenv -q venv && source venv/bin/activate && if [ -f .env ]; then source .env; fi'
alias sv='source venv/bin/activate && if [ -f .env ]; then source .env; fi'

alias k='kubectl'
alias pods='kubectl get pods'

alias g='lazygit'

export EDITOR=nvim
export VISUAL=nvim

export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

alias git-clear="git branch --merged | egrep -v '(^\*|master|main|develop|staging)' | xargs git branch -d"
alias git-clean='git branch --merged develop | grep -Ev "(^\*|develop|staging|main)" | xargs -n 1 -r git branch -d'
alias git-clean-remote='git branch -r --merged | grep -Ev "(^\*|develop|staging|main)" | sed 's/origin\///' | xargs -n 1 -r git push --delete origin'

alias dbtls="dbt ls --resource-type=model -s"

function dbt_run_changed() {
    children=$1
    models=$(git diff --name-only | grep '\.sql$' | awk -F '/' '{ print $NF }' | sed "s/\.sql$/${children}/g" | tr '\n' ' ')
    echo "Running models: ${models}"
    dbt run --select $models
}

function dbt_before() {
    models=$(git diff --name-only | grep '\.sql$' | awk -F '/' '{ print $NF }' | sed -r "s/(.*)\.sql$/+\1/g" | tr '\n' ' ')
    echo "Running models: ${models}"
    dbt build --select $models $@
}
