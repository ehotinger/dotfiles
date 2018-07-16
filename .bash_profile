#!/bin/bash

# Load shell dotfiles
for file in ~/.{bash_prompt,aliases,dockerfunc,extra,path,func}; do
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