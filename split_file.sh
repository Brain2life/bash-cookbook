#!/bin/bash

# Author: Maxat Akbanov
# Date created: 09/12/2023
# Description:
# Split a specified file into multiple parts of a given size in MB

# Function to convert MB to bytes
mb_to_bytes() {
    echo $(($1 * 1024 * 1024))
}

# Display help message
show_help() {
    echo "File Splitter"
    echo "This script splits a specified file into multiple parts of a given size in MB."
    echo "Usage: $0 <filename> <size in MB>"
    echo "Options:"
    echo "  <filename>   The name of the file to be split."
    echo "  <size in MB> The size of each part in MB. Must be a positive integer."
    echo "Example: $0 myfile.txt 5"
    echo "This example splits 'myfile.txt' into 5 MB parts."
}

# Check for help argument
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    show_help
    exit 0
fi

# Check for correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Error: Incorrect number of arguments."
    show_help
    exit 1
fi

# Assign arguments to variables
filename=$1
size_in_mb=$2

# Check if size is a positive integer
if ! [[ $size_in_mb =~ ^[0-9]+$ ]]; then
    echo "Error: Size must be a positive integer."
    show_help
    exit 1
fi

# Convert size from MB to bytes
size_in_bytes=$(mb_to_bytes $size_in_mb)

# Splitting the file
split --bytes=$size_in_bytes --numeric-suffixes $filename "${filename}_part"

echo "Splitting complete. Files are named ${filename}_part*"
