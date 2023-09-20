#!/bin/bash

source_dir="files"

for file in "$source_dir"/*; do
    if [[ -f "$file" ]]; then
        first_letter="$(basename "$file" | cut -c1 | tr '[:upper:]' '[:lower:]')"
        
        if [[ "$first_letter" =~ [a-z] ]]; then
            mv "$file" "$first_letter/"
        fi
    fi
done