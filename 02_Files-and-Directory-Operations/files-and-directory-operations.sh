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