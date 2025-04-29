#!/bin/bash
read -p "Enter username: " USERNAME
PASSWORD=$(openssl rand -base64 12)
useradd -m "$USERNAME"
echo "$USERNAME:$PASSWORD" | chpasswd
echo "User $USERNAME created with password: $PASSWORD"