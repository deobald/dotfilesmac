# general
alias la="ls -lach"
alias lsd="ls | grep ^d"

# git aliases
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias glg='git log --pretty=oneline'

# paths -------------------------------------------------------

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH=$PATH:/Library/TeX/texbin/

# rbenv
eval "$(rbenv init -)"

. "$HOME/.cargo/env"

# use brew sqlite3, not MacOS default
export PATH="$(brew --prefix sqlite3)/bin:${PATH}"


[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"
