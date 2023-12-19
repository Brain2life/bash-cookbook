#!/bin/bash

# Author: Maxat Akbanov
# Date created: 19/12/2023
# Description:
# Remove all containers and images from the system. Use the command with caution!

# Function to stop all running containers
stop_containers() {
    if [ "$(docker ps -q)" ]; then
        echo "Stopping all running containers..."
        docker stop $(docker ps -q) || { echo "Failed to stop containers"; exit 1; }
        echo "All containers stopped successfully."
    else
        echo "No running containers to stop."
    fi
}

# Function to remove all containers
remove_containers() {
    if [ "$(docker ps -a -q)" ]; then
        echo "Removing all containers..."
        docker rm $(docker ps -a -q) || { echo "Failed to remove containers"; exit 1; }
        echo "All containers removed successfully."
    else
        echo "No containers to remove."
    fi
}

# Function to remove all Docker images
remove_images() {
    if [ "$(docker images -q)" ]; then
        echo "Removing all Docker images..."
        docker rmi $(docker images -q) || { echo "Failed to remove images"; exit 1; }
        echo "All Docker images removed successfully."
    else
        echo "No Docker images to remove."
    fi
}

# Main script execution
echo "Starting Docker cleanup process..."
stop_containers
remove_containers
remove_images
echo "Docker cleanup process completed."
