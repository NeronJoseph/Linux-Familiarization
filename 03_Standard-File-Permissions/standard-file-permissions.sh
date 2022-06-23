#!/bin/bash

# View the details of owner, group, etc of a file
# Syntax: ls -l <filename>
ls -l testfile.txt

# List groups in your server 
groups

# Change the group of a file
# Syntax: chgrp <group-name> <file-name>
chgrp docker testfile.txt

# List the users in the server 
users

# Change the ownership of a file 
sudo chown neron testfile.txt

# Change ownership and group with a single command 
# Syntax: sudo chown <user>:<group> <file or directory>
sudo chown neron:docker testfile.txt

# Adding a permission to a user, group and others
# Syntax: chmod <u/g/o>+<r/w/x>
chmod u+rwx testfile.txt
chmod g+rw testfile.txt
chmod o+x testfile.txt
ls -l testfile.txt

# Removing permissions to a user, group and others
# Syntax: chmod <u/g/o>-<r/w/x>
chmod u-rwx testfile.txt
chmod g-rw testfile.txt
chmod o-x testfile.txt
ls -l testfile.txt

# Changing permissions in a single line 
chmod u=rw,g+rw,o= testfile.txt

# Using octal permissions
# the permission equivalent to chmod u=rw,g+rw,o= testfile.txt
chmod 660 testfile.txt