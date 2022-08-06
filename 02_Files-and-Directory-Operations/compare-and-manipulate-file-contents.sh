#!/bin/bash

# View contents of file
cat testfile.txt

# View the file contents in reverse order
tac testfile.txt

# View the last 10 lines
tail testfile.txt

# View the last n lines 
tail -n 20 testfile.txt

# View the first 20 lines 
head -n 20 testfile.txt

# Edit the word 'Line' with 'Line number' from testfile.txt
sed 's/Line/Line number/g' testfile.txt # Preview mode
sed -i 's/Line/Line number/g' testfile.txt # Edit mode 

# View only the first field from testfile2.txt
cut -d ',' -f 1 testfile2.txt

# Sort the items in file testfile2.txt
sort testfile2.txt

# Find the unique elements - This will remove duplicates if the elements are adjacent
uniq testfile2.txt

# For find the real unique elements
sort testfile2.txt | uniq

# Find the difference between 2 files 
diff file1 file2

# Find difference with more context
diff -f file1 file2

# Side by side comparison
diff -y file1 file2
sdiff file1 file2

# Change all values enabled to disabled in /home/bob/values.conf config file from line number 500 to 2000.
sed -i '500,2000s/enabled/disabled/g' values.conf
sed -i '500,2000s/enabled/disabled/gi' values.conf # with case insensitivity 

# Replace all occurrence of string #%$2jh//238720//31223 with $2//23872031223 in /home/bob/data.txt file.
sed -i 's~#%$2jh//238720//31223~$2//23872031223~g' /home/bob/data.txt

# Filter out the lines that contain any word that starts with a capital letter and are then followed by exactly 
# two lowercase letters in /etc/nsswitch.conf file and save the output in /home/bob/filtered1 file.
egrep -w '[A-Z][a-z]{2}' /etc/nsswitch.conf > /home/bob/filtered1