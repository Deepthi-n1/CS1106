#!/bin/bash

mkdir -p ~/Documents/Backup

# To copy all C program files s
cp ~/Documents/*.c ~/Documents/Backup/

# To change directory 
cd ~/Documents

# To create .tar.gz 
tar -czf Backup.tar.gz Backup

# Delete
rm -rf ~/Documents/Backup

echo "Backup and restore process completed successfully."
