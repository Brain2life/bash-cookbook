# Docker cleanup
This is a Bash script that includes error handling for stopping and removing all Docker containers and images. The script checks if there are any containers or images before attempting to stop, remove, or delete them. This prevents errors when there are no containers or images to process.

## Usage
1. Copy the script into a file, for example, `docker_cleanup.sh`.
2. Make the script executable with the command: `chmod +x docker_cleanup.sh`.
3. Run the script using `./docker_cleanup.sh`.