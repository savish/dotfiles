#!/bin/zsh

# PATH
export PATH="/usr/local/share/python:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export EDITOR='code -w'

# Owner
export USER_NAME="{{username}}"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'

# Use code for editing config files
alias zshconfig="{{editor, usually code}} ~/.zshrc"
alias envconfig="{{editor, usually code}} ~/{{path, usually .config}}/{{ filename, usually env}}.sh"

# return to the root folder of the current git repository
alias gitroot='cd $(git rev-parse --show-toplevel)'

# open browser to the current github repository
function browse() { open $(echo $(git config --get remote.origin.url) | sed "s/git@github.com:/https:\/\/github.com\//" | sed "s/.git$//") }
