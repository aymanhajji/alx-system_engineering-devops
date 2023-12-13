#!/bin/bash

# Read words from standard input and count occurrences
readarray -t words
declare -A count
for word in "${words[@]}"; do
    ((count[$word]++))
done

# Print words that appear exactly once, sorted
for word in "${!count[@]}"; do
    if ((count[$word] == 1)); then
        echo "$word"
    fi
done | sort

