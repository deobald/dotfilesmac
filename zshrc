
# environment ------------------------------------------------

# color the terminal
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

GPG_TTY=$(tty)
export GPG_TTY

# history -----------------------------------------------------

HISTCONTROL=ignoreboth # no dupes or lines starting with spaces
export PROMPT_COMMAND='history -a;history -r' # across tabs
HISTSIZE=1000
HISTFILESIZE=2000

# aliases -----------------------------------------------------

#alias emacs="open -na /Applications/Emacs.app/Contents/MacOS/Emacs ."

# general
alias la="ls -lach"
alias lsd="ls | grep ^d"
which ack >> /dev/null || alias ack=ack-grep

# global aliases
alias -g H='| head'
alias -g T='| tail'
alias -g G='| ack'
alias -g L="| less"
alias -g M="| most"
alias -g B="&|"
alias -g HL="--help"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

alias ll="ls -l"
alias ctags="/usr/local/Cellar/ctags/5.8/bin/ctags"
alias refreshctags="ctags -f tags --recurse=yes . && find . -name '*.rb' -o -name '*.java' -o -name '*.cs' -o -name '*.js' -o -name '*.haml' -o -name '*.erb' -o -name '*.coffee' >| cscope.files && cscope -b -q"

export HISTFILE=~/.zhistory

# git aliases
alias gst='git st'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias glg='git lg'

# directory options
setopt auto_cd
setopt auto_pushd

# paths -------------------------------------------------------

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="./bin:$PATH"

alias vi=vim
alias ep="vim ~/.zshrc && source ~/.zshrc"
alias eplocal="vim ~/.zshrc.local && source ~/.zshrc.local"
export EDITOR="vim"
if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
  alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
  export EDITOR="/Applications/MacVim.app/Contents/MacOS/Vim"
  export GIT_EDITOR=$EDITOR
fi

export LESS='-RM' # -R: print ANSI color escapes directly to the screen
                  # -M: use very verbose prompt, with pos/%

# folder aliases
[[ -e ~/.zshrc.local ]] && source ~/.zshrc.local

# quick access to directories
# softlinks (e.g. rspec) created in the directory ~/.soft_links will
# be accessible as ~rspec from anywhere
if [ -d ~/.soft_links ]; then
  for i in $HOME/.soft_links/*; do
    soft_link=`basename $i`;
    hash -d $soft_link="$i"
  done
fi

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# rbenv cocoapods
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
export PATH=$GEM_HOME/ruby/3.2.0/bin:$PATH

# local bins
export PATH=./bin:~/.bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/bin:$PATH

# pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

# flutter
export PATH="$PATH:$HOME/development/flutter/bin"

# xtdb.com deployment == turned off (for pariyatti)
export AWS_PROFILE=default

# coreutils
#export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

# openjdk - homebrew
export JAVA_HOME="/usr/local/opt/openjdk@17/"
export PATH="/usr/local/opt/openjdk@17/bin:$PATH"

# pandoc_resume
export PATH=$PATH:/Library/TeX/texbin/

# rust
export PATH=$PATH:~/.cargo/bin

# use brew sqlite3, not MacOS default
export PATH="$(brew --prefix sqlite3)/bin:${PATH}"

