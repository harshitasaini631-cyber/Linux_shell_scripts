
#!/bin/bash
# Script Name: backup_directory.sh
# Purpose: To copy a specified directory to a backup folder with a timestamp
# Author: Harshita saini
# Date: 28-Oct-2025

# Ask the user which directory they want to back up
echo "Enter the directory you want to back up:"
read source_dir

# Make sure the directory exists
if [ ! -d "$source_dir" ]; then
  echo "Error: The directory does not exist!"
  exit 1
fi

# Create a backup folder name with current date and time
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_dir="backup_$timestamp"

# Create the backup folder
mkdir -p "$backup_dir"

# Copy everything from the chosen directory to the backup folder
cp -r "$source_dir" "$backup_dir"

# Print success message
echo "Backup completed successfully!"
echo "Your backup is saved in: $backup_dir"
