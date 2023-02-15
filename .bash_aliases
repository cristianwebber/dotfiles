alias python=python3
alias vim=nvim

alias upd='sudo apt update && sudo apt upgrade'

alias ve='virtualenv -q venv && source venv/bin/activate && if [ -f .env ]; then source .env; fi'
alias sv='source venv/bin/activate && if [ -f .env ]; then source .env; fi'

alias k='kubectl'
alias pods='kubectl get pods'
