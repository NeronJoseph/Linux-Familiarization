#!/bin/bash

# View file on the terminal 
less file1
# Search for a keyword - use / and enter the word
# Use 'n' for the next iteration and 'shift + n' for previous iteration. 
# Use q for quit from the less. 
more file1

# vi commands
# Create an open a file
vi testfile.txt

# Search for word named 'test'
/test # in default mode 
/test\c # in case sensitive mode 

# copy a line from text
yy

# cut a line from text file 
dd

# paste a line 
p 

# write and quit from file
:wq

# quit without saving the changes 
:q!