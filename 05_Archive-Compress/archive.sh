#!/bin/bash

# Archive files with different methods
tar -cvf archive.tar file1.txt file2.txt file3.txt

tar --create --file archive1.tar --verbose file1.txt file2.txt

# Append a file to existing tar file
tar --append --file archive1.tar file3.txt

# List files in the tar file
tar --list --file archive.tar

tar -tf archive1.tar

tar tf archive.tar

# Archive a directory
tar -cf arc-dir.tar directory/