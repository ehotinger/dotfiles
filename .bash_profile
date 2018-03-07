#!/bin/bash

# Load shell dotfiles

for file in ~/.{aliases,dockerfunc}; do
    if [[ -r "$file" ]] && [[ -f "$file" ]]; then
        source "$file"
    fi
done

unset file

# Autocorrect typos in path names when using `cd`
shopt -s cdspell