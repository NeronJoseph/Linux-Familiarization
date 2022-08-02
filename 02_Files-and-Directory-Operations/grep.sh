#!/bin/bash

# Grep syntax
# grep [option] 'search pattern' file
grep 'Line 2' testfile.txt

# Ignore case during search 
grep -i 'line' testfile.txt

# search a directory for pattern
grep -r 'test' /etc/

# search for line that don't contain the pattern
grep -v 'test' /etc/

# match only words, not parts of word
grep -wi 'test' /etc/

# search for only the matching word instead of full line 
grep -oi 'test' /etc/