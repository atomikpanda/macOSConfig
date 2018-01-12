#!/bin/zsh

export PATH=$PATH:$HOME/Documents/Configuration/bin
export THEOS=$HOME/Developer/theos

function pbfile() {
pbpaste > /tmp/clipboard.txt
echo /tmp/clipboard.txt
}

alias mpi="make package install"
alias pbwc="wc -w $(pbfile)"

# iterm2 titlebar
printf -- $'\033]6;1;bg;red;brightness;40\a\033]6;1;bg;green;brightness;44\a\033]6;1;bg;blue;brightness;52\a'
#echo -e "\033]6;1;bg;red;brightness;40\a"
#echo -e "\033]6;1;bg;green;brightness;44\a"
#echo -e "\033]6;1;bg;blue;brightness;52\a"




