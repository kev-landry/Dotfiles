if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (zellij setup --generate-auto-start fish | string collect)
    set -g fish_greeting
end

starship init fish | source


# Aliases

alias meteo "curl 'https://wttr.in?2QF' -H 'Accept-Language: fr'"
alias laralog "cat (date +'server/storage/logs/laravel-%Y-%m-%d.log')"
alias laradlog "tail -f -n 100 (date +'server/storage/logs/laravel-%Y-%m-%d.log')"

# Git

alias gfa "git fetch --all --prune"
alias gaa "git add ."
alias gc  "git commit -m $argv*"
alias gp "git push origin HEAD"
alias gfp "git push -f origin HEAD"
alias gs "git status"
alias grc "git rebase --continue"
alias grlc "git rebase -i HEAD~1"

alias ... "cd ../../"
alias .... "cd ../../../"
alias ..... "cd ../../../../"

# Make commands

alias mbc "make before-commit"
alias mtc "make typescript-check"
alias msb "make server-bash"