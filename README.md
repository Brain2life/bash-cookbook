# Get parameters of secure TLS connection to the given domain

Related article: []()

## Requirements:
OpenSSL 1.1.0 and later versions installed

More info at [https://github.com/openssl/openssl](https://github.com/openssl/openssl)

## Make executable
To make a custom bash script executable as a command from the terminal, you can follow these steps:

1. **Make the Script Executable**:
   Give execute permissions to your script.
   ```bash
   chmod +x check-tls-info
   ```

2. **Move the Script to a Directory in Your PATH or Add the Script's Directory to the PATH**:

   - One of the common ways to make a script globally executable is to move it to a directory that's already in your system's PATH (like `/usr/local/bin` or `~/bin` if it's in your PATH).

     ```bash
     sudo mv check-tls-info /usr/local/bin/check-tls-info
     ```

   - Alternatively, if you don't want to move your script, you can add the directory containing your script to the system's PATH. If your script is in the directory `/path/to/script_dir`, you can add it to the PATH in your `~/.bashrc` or `~/.profile`:

     ```bash
     echo "export PATH=$PATH:/path/to/script_dir" >> ~/.bashrc
     ```

     Then, source your `~/.bashrc` to refresh your PATH:
     ```bash
     source ~/.bashrc
     ```

4. **Run Your Script**:
   Now, you can simply type `check-tls-info <domain>` in the terminal, and it should execute your script.

Remember, when you write custom scripts and put them in global directories, make sure they do not have generic names that might conflict with system utilities or other software. It's always a good practice to give them somewhat unique names to avoid potential conflicts.