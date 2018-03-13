#!/bin/bash

# Load shell dotfiles
for file in ~/.{aliases,dockerfunc,extra,path}; do
    if [[ -r "$file" ]] && [[ -f "$file" ]]; then
        source "$file"
    fi
done

unset file

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Append to the Bash history file
shopt -s histappend

# Case-insensitive globbing, used in pathname expansion
shopt -s nocaseglob