#!/bin/bash

# Extract tar file to current directory 
tar --extract --file archive.tar 
tar xf archive.tar

# Extract tar to a specified directory 
tar --extract --file archive.tar --directory /tmp/
tar xf archive.tar -C /tmp/

# Avoid permission issues while extracting tar files 
sudo tar --extract --file archive.tar --directory /tmp/