#!/bin/bash

is_private() {
    local ip=$1
    local stat=1

    # Check if IP falls within private IP address ranges
    [[ $ip =~ ^10\. ]] && stat=0
    [[ $ip =~ ^192\.168\. ]] && stat=0
    [[ $ip =~ ^172\.([1][6-9]|2[0-9]|3[0-1])\. ]] && stat=0

    return $stat
}

# Main script execution starts here

read -p "Enter an IP address: " ip

# Validate IP format
if [[ ! $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
    echo "Invalid IP address format."
    exit 1
fi

if is_private $ip; then
    echo "$ip is a private IP address."
else
    echo "$ip is a public IP address."
fi