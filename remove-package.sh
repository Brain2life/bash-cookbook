# Author: Maxat Akbanov
# Description: Script completely removes specified package from the system. Pass package name as an argument for the command.
# Tests: Script was only tested for Ubuntu and Debian based systems

#!/bin/bash

# Function to display help information
show_help() {
    echo "Usage: $0 <package_name>"
    echo "Fully removes the given package from an Ubuntu-based system and cleans up afterwards."
    echo
    echo "Arguments:"
    echo "  <package_name>    The name of the package to remove."
    echo
    echo "Options:"
    echo "  -h, --help    Show this help message and exit."
}

# Check if at least one argument is provided or if help is requested
if [ $# -eq 0 ] || [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    show_help
    exit 0
fi

# Assign the first argument to PACKAGE_NAME
PACKAGE_NAME=$1

# Update the package list
echo "Updating package lists..."
sudo apt-get update

# Remove the package
echo "Removing ${PACKAGE_NAME}..."
sudo apt-get remove --purge -y $PACKAGE_NAME

# Clean up unnecessary packages and dependencies
echo "Cleaning up unnecessary packages and dependencies..."
sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo apt-get clean

echo "${PACKAGE_NAME} has been fully removed from the system and the system cleaned."
