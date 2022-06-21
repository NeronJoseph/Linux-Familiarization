#!/bin/bash

# Find more information about a command, use --helo command
# Syntax: <command> --help
ls --help
mkdir --help 

# Find more information of commands using manual pages. Command man can be used for that.
# Syntax: man <command>
man ls 
man mkdir 
man man

# If we are not remembering the command name itself, we can use apropos command to search in the manual for operations. 
# Syntax: apropos <matching keywords>
apropos director
# The above keyword works for both directory and directories. Hence use common keywords like these when using apropos

# Refresh the apropos to get full details from the man page
sudo mandb 