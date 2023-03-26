#!/bin/bash
# What to backup. 
backup_files="/home/james/"
# Where to backup to.
dest="/home/james/OneDrive/Home/Backup"
# Create archive filename.
day=$(date +%d%m%Y)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

mkdir /home/james/OneDrive/Home
mkdir /home/james/OneDrive/Home/Backup
rm -R /home/james/OneDrive/Home/Backup/*

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

#Send data to OneDrive
sudo su james -c 'onedrive --upload-only --no-remote-delete --synchronize'
