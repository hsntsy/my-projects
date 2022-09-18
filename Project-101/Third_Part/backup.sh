#!/bin/bash



# Check if we are root privilage or not

if [[ $UID -ne 0 ]]
then
  echo "you are not have root privilage"
  exit 1
fi

# Which files are we going to back up. Please make sure to exist /home/ec2-user/data file

backup_file="/home/ec2-user/data"

# Where do we backup to. Please crete this file before execute this script

dest="/mnt/backup"

# Create archive filename based on time

time=$(date +"%Y_%m_%d_%H_%M")

hostname=$(hostname -s)

archive_file="$hostname-$time.tgz"

# Print start status message.

echo "archive process is started"

# Backup the files using tar.

tar -cvzf $dest/$archive_file $backup_file 
# Print end status message.

echo "backup is finished"

# Long listing of files in $dest to check file sizes.

ls -l /mnt/backup 

