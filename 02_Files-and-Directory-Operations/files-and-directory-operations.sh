#!/bin/bash

# List all files and directories in the current directory 
ls

# List all items including hidden files 
ls -a 

# List all items in the long listing format 
ls -al 

# List items of a particular directory called /var/log
ls -l /var/log

# List the files and directory size in human readable format 
ls -alh 

# Print the current working directory 
pwd 

# Change directory to /home/neron
cd /home/neron

# Go to the root directory
cd /

# Go to the previous directory 
cd -

# Go to home directory 
cd 

# Create a file called test.txt 
touch test.txt

# Create a file in a different directory /home/neron/test
touch /home/neron/test/test.txt

# Create a directory
# Syntax: mkdir <directory name> 
mkdir test-directory

# Copy the file to a different location
# Syntax: cp [source] [destination]
cp /home/neron/test/test.txt test-directory/

# Copy a file with new name 
cp /home/neron/test/test.txt test-directory/test-new.txt

# Copy a directory to a new directory 
# Syntax: cp -r [source] [destination]
cp -r folder1/ folder2/

# Move the file from one location to another 
# Syntax: mv [source] [destination]
mv test.txt test-directory/
mv test.txt test-renamed.txt 

# To delete a file 
rm test.txt 

# To delete a directory, use -r option 
rm -r test-directory

# Display file or filesystem status 
# Syntax: stat <filename>
stat test.txt

# Create a hard link of a file 
# Syntax: ln <path-to-target> <path-to-link-file>
ln /home/neron/test-link.txt /home/neron/test.txt

# Search for files with specified name
# Syntax: find <location> -name <filename>
find /usr/share -name '*.jpg'

# Search for files specified size 
find /lib64/ -size +10M

# Find file modified in less than 1 min
find /dev/ -mmin -1

# Find a file with case insensitive filename
find -iname 'file1.jpg'

# Find all file names starts with f
find -name 'f*'

# Find file modified 5 minutes before. Not in the entire 5 minutes, the exact minute before 5 minute.
find -mmin 5

# Find all files modified within 5 minutes 
find -mmin -5

# Find all files modified before 5 minutes 
find -mmin +5

# Find files changes in last 24 hours 
find -mtime 0

# Find files changed in the last 48 hours
find -mtime 1

# Find file changed in the last 5 min 
find -cmin -5

# Find files with size 512k
find -size 512k

# Find files with size greater than 512k
find -size +512k

# Find files with size less than 10MB
find -size -10M

# Find file with AND operator 
find  -name 'file.txt' -size +10M

# Find file with OR operator 
find -name 'file.txt' -o -size +10M 

# File file with NOT operator 
find -not -name 'f*'
find \! -name 'f*'

# Find file with permissions
find -perm 644                  # find file with exact permissions
find -perm -644                 # find file with at least this permissions
find -perm /644                 # find file with any of these permissions

find -perm u=rw,g=rw,o=r        # find file with exact permissions
find -perm -u=rw,g=rw,o=r       # find file with at least this permissions
find -perm /u=rw,g=rw,o=r       # find file with any of these permissions