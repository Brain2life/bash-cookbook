#!/bin/bash

# parse-path.sh - Script to make the $PATH variable output more readable

# Split the PATH variable using ':' as the delimiter and print each directory
IFS=':' read -ra ADDR <<< "$PATH"
for i in "${ADDR[@]}"; do
    echo "$i"
done
