#!/bin/bash

# This script demonstrates a solution to the race condition bug using file locking.

# Create two files
touch file1.txt
touch file2.txt

# Use flock to acquire a lock before writing to the files. This prevents other processes
# from writing to the same file concurrently.
( flock -n 200; echo "Process 1 writing to file1" > file1.txt; flock -u 200) &
( flock -n 201; echo "Process 2 writing to file2" > file2.txt; flock -u 201) &

wait # Wait for both background processes to finish

# Check the contents of the files
cat file1.txt
cat file2.txt

# Clean up
rm file1.txt
rm file2.txt