
#!/bin/bash
# Script Name: auto_download.sh
# Purpose: To download a file from the internet and save it in a folder
# Author: Harshita saini
# Date: 28-Oct-2025

# Asking for the download URL
echo "Enter the URL of the file to download:"
read url

# Folder to save downloads
download_dir="downloads"

# Create the folder if it doesn’t exist
mkdir -p "$download_dir"

# Downloading the file using wget
wget -P "$download_dir" "$url"

echo "File downloaded successfully in '$download_dir' folder."

