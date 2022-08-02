#!/bin/bash

# Print line begins with sam
grep '^sam' names.txt

# Print line ends with sam
grep 'sam$' names.txt

# Print line with any character between s and m
grep 's.m' names.txt

# To use extended regex use -E with grep
grep -Er '0+' names.txt
egrep -r '0+' names.txt

# Find 3 zeros 
egrep -r '0{3,}' /etc/ # atleast 3 zeros
egrep -r '0{,3}' /etc/ # atmost 3 zeros
egrep -r '0{3}' /etc/ # exactly 3 zeros
egrep -r '0{3,5}' /etc/ # from 3 to 5 zeros
# Syntax - 0{min,max}

# Match a word disabled or disable
egrep -r 'disabled?' /etc/

# Match one thing or the other 
egrep -r 'enabled|disabled' /etc/

# Search for cat or cut 
egrep -r 'c[au]t' /etc/
# [a-z] [0-9] [abx956]

# Subexpression sample
egrep -r '/dev/([a-z]*[0-9]?)*' /etc/
egrep -r '/dev/(([A-Z]|[a-z])*[0-9]?)*' /etc/

# Negated sets
egrep -r 'http[^s]' /etc/