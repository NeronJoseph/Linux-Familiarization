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