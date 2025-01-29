#!/bin/bash

# This script demonstrates a race condition bug.

# Create two files
touch file1.txt
touch file2.txt

# Start two processes simultaneously. 
# Race condition occurs because both processes try to modify the same file
# at the same time. This can lead to data corruption or unexpected behavior.
( echo "Process 1 writing to file1" > file1.txt ) &
( echo "Process 2 writing to file2" > file2.txt ) &

wait # Wait for both background processes to finish

# Check the contents of the files (May show incomplete/corrupted data)
cat file1.txt
cat file2.txt

# Clean up
rm file1.txt
rm file2.txt