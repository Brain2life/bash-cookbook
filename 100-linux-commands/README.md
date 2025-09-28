## Basic commands

| Command                      | Description                                                                 |
|------------------------------|-----------------------------------------------------------------------------|
| `ls`                         | List all files and directories in the current directory                     |
| `ls -al`                     | List files and directories with details (permissions, owner, size, date)    |
| `ls -t`                      | List files sorted by last modification time                                 |
| `pwd`                        | Show the full path of the current directory                                 |
| `cd directory`               | Change to a specific directory                                              |
| `cd ..`                      | Move one level up (parent directory)                                        |
| `cd /`                       | Go to the root directory                                                    |
| `clear`                      | Clear the terminal screen                                                   |
| `history`                    | Show command history for the current session                                |
| `touch filename`             | Create an empty file or update modification time of an existing file        |
| `vi filename`                | Open file in the **vi** text editor                                         |
| `cat filename`               | Display the contents of a file                                              |
| `hostnamectl`                | Show system information (hostname, kernel, architecture, etc.)              |
| `ip a`                       | Show network interfaces and IP addresses (modern alternative to `ifconfig`) |
| `date`                       | Display the current date and time                                           |
| `top`                        | Show running processes in real time                                         |
| `free -m`                    | Display memory usage in MB                                                  |
| `head filename`              | Show the first 10 lines of a file                                           |
| `tail filename`              | Show the last 10 lines of a file                                            |
| `mv file /new/file/path`     | Move file to another location                                               |
| `mv old_filename new_filename`| Rename a file                                                              |
| `cp filename filename_2`     | Copy a file                                                                 |
| `man command_name`           | Show the manual page for a command                                          |
| `rm filename`                | Delete a file                                                               |
| `rm -rf directory_name`      | Delete a directory and its contents recursively and forcefully              |
| `sudo command`               | Run a command with elevated privileges                                      |
| `mkdir directory_name`       | Create a new directory                                                      |
| `kill pid`                   | Terminate a process by its PID                                              |
| `reboot`                     | Restart the system                                                          |
| `shutdown -h now`            | Shut down the system immediately                                            |
| `poweroff`                   | Power off the system (same as pressing the power button)                    |

## Networking commands

| Command                          | Description                                                                 |
|----------------------------------|-----------------------------------------------------------------------------|
| `dig domain_name`                | Show DNS information for the specified domain name                          |
| `dig domain_name +short`         | Display only the essential DNS records (short output)                       |
| `host domain_name`               | Perform a DNS lookup and return the IP address of a domain                  |
| `whois domain_name`              | Retrieve domain registration details (owner, registrar, etc.)               |
| `ping ip_or_domain`              | Check connectivity between the host and the specified IP/domain             |
| `ssh username@ip`                | Log into a remote server via SSH as the specified user                      |
| `wget file_url`                  | Download a file from the web                                                |
| `wget -c file_url`               | Resume an interrupted download                                              |
| `traceroute domain_name`         | Trace the route packets take from the local host to the target host         |
| `telnet domain_name port`        | Connect to a remote host on a specific port (useful for basic testing)      |
| `netstat -tulpn`                 | Show all listening ports (deprecated, replaced by `ss`)                     |
| `ss -tulpn`                      | Show active listening ports and connections (modern replacement for `netstat`) |
| `route`                          | Display the routing table for the current host                              |
| `arp`                            | Show the contents of the ARP table                                          |
| `cat /etc/resolv.conf`           | View the DNS servers currently used by the host                             |
| `tcpdump -i eth1 'port 80'`      | Capture and analyze incoming traffic on port 80 for interface `eth1`        |
| `nmap ip_or_domain`              | Perform a network scan: check if a host is up and list open ports           |

## Search Commands

| Command                          | Description                                                                 |
|----------------------------------|-----------------------------------------------------------------------------|
| `locate keyword`                 | Search for a file or directory using a cache (faster than `find`, but may be outdated) |
| `find keyword`                   | Search for a file or directory on the system (slower, but always up-to-date) |
| `find /home -name "*.ext"`       | Find all files with the `.ext` extension in the home directory and subdirectories |
| `find / -type f ! -perm xxx`     | Find files under `/` that do **not** have the specified permission `xxx`     |
| `find / -perm /u=r`              | Show all files readable by the owner (user)                                 |
| `grep keyword filename`          | Search for a specific keyword inside a file                                 |
| `grep keyword *`                 | Search for a keyword in all files in the current directory                   |
| `grep -i keyword *`              | Search ignoring case (case-insensitive)                                      |
| `grep -r keyword *`              | Recursive search (include subdirectories)                                    |
| `grep -x 'exact string' *`       | Match only whole lines that exactly match the given string                   |
| `grep -c keyword *`              | Count the number of matches for a keyword                                    |

## Permissions Commands

| Command                                   | Description                                                                 |
|-------------------------------------------|-----------------------------------------------------------------------------|
| `chmod xxx filename`                      | Set the specified permissions for a file (e.g., `chmod 755 script.sh`)      |
| `chmod -R xxx directory`                  | Set the specified permissions for a directory and all its subdirectories    |
| `chmod -x filename`                       | Remove execute permission from a file                                       |
| `chown username filename`                 | Change the owner of a file                                                  |
| `chown username:groupname filename`       | Change the owner and group of a file                                        |
| `chown username:groupname file1 file2`    | Change the owner and group of multiple files                                |
| `chown --from=bob alice filename`         | Change file owner to `alice` **only if** the current owner is `bob`         |
| `chown -h user:group symbolic_link`       | Change the owner and group of a symbolic link itself (not the target)       |

## Storage/Disk Management Commands

| Command                                        | Description                                                                 |
|------------------------------------------------|-----------------------------------------------------------------------------|
| `df -h`                                        | Show used and available disk space on mounted filesystems (human-readable)  |
| `mount device mountpoint`                      | Mount a partition or device to a directory                                  |
| `umount mountpoint`                            | Unmount a partition or device                                               |
| `du -h /home/directory_name`                   | Show the size of a directory in a human-readable format                     |
| `du -sh /home/directory_name`                  | Show only the total size of a directory                                     |
| `du -ah --exclude='*.xxx' /home/directory_name`| Show disk usage of all files in a directory, excluding files matching `*.xxx` |
| `du -ha --time /home/directory_name`           | Show files with their last modification time and sizes                      |
| `fdisk -l`                                     | Display disk size and details of all partitions                             |
| ``sudo du -x / \| sort -nr \| head -20``           | Show the top 20 largest directories on the system                           |

## User Management Commands

| Command                                      | Description                                                                 |
|----------------------------------------------|-----------------------------------------------------------------------------|
| `adduser username`                           | Create a new user                                                           |
| `userdel -r username`                        | Delete a user and their home directory                                      |
| `passwd username`                            | Change a user’s password                                                    |
| `passwd -l username`                         | Lock a user account (disable login)                                         |
| `whoami`                                     | Show the currently logged-in user                                           |
| `usermod -c "This user is admin" username`   | Add a comment/description to a user account                                 |
| `cat /etc/passwd`                            | Display a list of all users with their IDs and login shells                 |
| `usermod -d /home/test username`             | Change a user’s home directory                                              |
| `sudo deluser username group_name`           | Remove a user from a group                                                  |
| `usermod -a -G group_name username`          | Add a user to a group (without removing them from other groups)             |
| `groupadd group_name`                        | Create a new group                                                          |
| `groupdel group_name`                        | Delete a group                                                              |
| `id`                                         | Show the user ID (UID), group ID (GID), and all groups the user belongs to  |

## Archive Commands

| Command                                      | Description                                                                 |
|----------------------------------------------|-----------------------------------------------------------------------------|
| `tar -cvf archive.tar filename.txt`          | Create a **tar** archive containing `filename.txt`                          |
| `tar -tvf archive.tar`                       | List the contents of a tar archive                                          |
| `tar -xvf archive.tar filename.txt`          | Extract a specific file from a tar archive                                  |
| `zip archive.zip file1.txt file2.html file3.jpg` | Create a zip archive from multiple files                                   |
| `zip -u archive.zip filename.txt`            | Add a file to an existing zip archive                                       |
| `zip -d archive.zip filename.txt`            | Delete a file from a zip archive                                            |
| `unzip archive.zip`                          | Extract a zip archive                                                       |
| `unzip archive.zip -d /directory_name`       | Extract a zip archive to a specific directory                               |
| `tar xf archive`                             | Extract an archive (tar, tar.gz, etc.) automatically                        |
| `gzip filename`                              | Compress a file into `.gz` format (removes the original file)               |
| `gzip -c filename > archive.gz`              | Create a compressed `.gz` file while keeping the original file              |

## Advanced Commands

| Command                                                                 | Description                                                                 |
|-------------------------------------------------------------------------|-----------------------------------------------------------------------------|
| `grep -ir "word" /etc/random_d`                                         | Search for a word in all files of a directory (recursive, case-insensitive) |
| `ps -ef \| grep process_name`                                           | Check if a specific process is running                                      |
| `netstat -tulpn \| grep port`                                           | Check if a specific port is open (deprecated, use `ss`)                     |
| `ss -tulpn`                                                             | Show active listening ports and processes (modern replacement for `netstat`)|
| `history \| grep keyword`                                               | Search command history for a keyword                                        |
| `ssh-keygen`                                                            | Generate SSH key pairs                                                      |
| `scp file user@ip:/home/location`                                       | Copy a file to another host via SSH                                         |
| `find / -type f -perm 777 -print -exec chmod xxx {} \;`                  | Find all files with `777` permissions and change them to `xxx`              |
| `sed -i 's/replace_this/with_this/g' file.txt`                          | Replace all occurrences of text in a file                                   |
| `sed -i -r 's/draft: true/draft: false/' /opt/*`                        | Replace occurrences in all files inside `/opt`                              |
| `hostname -I \| awk '{print $1}'`                                       | Get all host IP addresses and print the first one                           |
| `tcpdump -nnvvS src SRC_IP and dst port XXXX`                           | Capture and analyze traffic from a specific IP going to a specific port     |
| `traceroute domain_name -q 5`                                           | Send 5 probe packets per hop to diagnose network path                       |
| `ip r`                                                                  | Show the system’s routing table (default gateway, routes)                   |
