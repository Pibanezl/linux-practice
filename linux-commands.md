# Week 1 - Essential Linux Commands

## Block 1 - Commands practiced today:

### pwd
Shows the current working directory.

### ls
Lists files in the current directory.

### cd
Changes directory.

### cat
Displays the content of a file.

### touch
Creates an empty file.

## Block 2 - System Exploration Commands

### tree
Shows directory structure in a tree format.

### file
Identifies the type of a file.

### du
Displays disk usage of files and directories.

### df
Shows disk space usage.

### head
Shows the first lines of a file.

### tail 
Shows the last lines of a file.

### wich
Shows the path of a command.

## Block 3 - File Manipulation Commands

### cp
Copies files or directories.

### mv
Moves or renames files.

### rm
Removes files or directories.

### mkdir
Creates directories.

### rmdir
Removes empty directories.

## Block 4 - Process and System Monitoring Commands

### ps
Showing running processes.

### top
Displays processes in real time.

### htop
Improved version of top with colors and better interface.

### pgrep
Searches for processes by name.

### pkill
Terminates processes by name.

### kill
Terminates processes by PID.

# Week 2

## Block 5 - Permissions and Ownershio

### chmod
Changes file permissions (numeric or symbolic).

### chown
Changes file owner and group.

### chgrp
Changes group ownership.

## Block 6 - Search and Filter Commands

### grep
Searches for text inside files.

### find
Searches for files by name, type, size, or date.

### wc
Count lines, words, or characters.

### sort
Sort lines alphabetically or numerically.

### uniq
Removes duplicate lines and can count ocurrences.

## Block 7 - Redirections and Pipes

### >
Redirects output to a file (overwrites existing content).

### >>
Appends outpudt to a file without overwriting.

### |
Sends output of one command as input to another.

### tee
Displays output and writes it to a file at the same time.

### head
Shows the first lines of a file (-n + number).

### tail
Shows the last lines of a file. Use `tail -f` to follow logs in real time.

## Block 8 - Processes, Jobs, Signal, and Services

### 1. Viewing Processes
- `ps aux` - Shows all running processes in the system.
- `top` - Real-Time process viewer.
- `htop` - Improved interactive process viewer (may require installation).

### 2. Filtering Processes
- `ps aux | grep <name>` - Search for processes matching a keyword.

### 3. Killing Processes
- `kill <PID>` - Sends SIGTERM (Polite shutdown).
- `kill -9 <PID>` - Sends SIGKILL (Forcefull termination).

### 4. Signals
- **SIGTERM (15)** - Graceful shutdown request.
- **SIGKILL (9)** - Immediate termination.
- **SIGSTOP** - Pause a process.
- **SIGCOUNT** - Resume a paused process.

### 5. Background and foreground Jobs
- `Ctrl + Z` - Suspend the current job.
- `bg` - Send the suspended job to the background.
- `jobs` - List background jobs.
- `fg` - Bring a background job back to the foreground.

### 6. Systemd Services
- `systemctl status <service>` — check service status.
- `systemctl start <service>` — start a service.
- `systemctl stop <service>` — stop a service.
- `systemctl enable <service>` — enable service autostart.
- `systemctl disable <service>` — disable service autostart.

### 7. Logs
- `journalctl -u <service>` — view logs for a specific service.
- `journalctl -u <service> -f` — follow logs in real time.
