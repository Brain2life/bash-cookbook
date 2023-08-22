# Bash script to check if given IP address is private or public

Related article: [Quick guide on CIDR notation and Public and Private IP addresses](https://brain2life.hashnode.dev/quick-guide-on-cidr-notation-and-public-and-private-ip-addresses)

## Test cases
test_ip "10.0.0.5" "private"  
test_ip "192.168.1.1" "private"  
test_ip "172.17.5.6" "private"  
test_ip "8.8.8.8" "public"  
test_ip "172.15.5.6" "public"  
test_ip "192.169.1.1" "public"  

## Make executable
To make a custom bash script executable as a command from the terminal, you can follow these steps:

1. **Make the Script Executable**:
   Give execute permissions to your script.
   ```bash
   chmod +x check_ip_type.sh
   ```

2. **Move the Script to a Directory in Your PATH or Add the Script's Directory to the PATH**:

   - One of the common ways to make a script globally executable is to move it to a directory that's already in your system's PATH (like `/usr/local/bin` or `~/bin` if it's in your PATH).

     ```bash
     sudo mv check_ip_type.sh /usr/local/bin/check_ip_type
     ```

     Note: When moving the script to a global directory, you might not need the `.sh` extension. Without the extension, you can simply type `check_ip_type` instead of `check_ip_type.sh` to run it.

   - Alternatively, if you don't want to move your script, you can add the directory containing your script to the system's PATH. If your script is in the directory `/path/to/script_dir`, you can add it to the PATH in your `~/.bashrc` or `~/.profile`:

     ```bash
     echo "export PATH=$PATH:/path/to/script_dir" >> ~/.bashrc
     ```

     Then, source your `~/.bashrc` to refresh your PATH:
     ```bash
     source ~/.bashrc
     ```

4. **Run Your Script**:
   Now, you can simply type `check_ip_type` in the terminal, and it should execute your script.

Remember, when you write custom scripts and put them in global directories, make sure they do not have generic names that might conflict with system utilities or other software. It's always a good practice to give them somewhat unique names to avoid potential conflicts.