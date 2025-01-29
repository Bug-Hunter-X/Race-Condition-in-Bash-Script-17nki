# Race Condition Bug in Bash Script

This repository demonstrates a race condition bug in a simple bash script.  The script launches two processes that concurrently write to files. Due to the lack of synchronization, this can lead to unexpected results. The solution demonstrates how to handle this using proper synchronization mechanisms. 

## Bug Description

The script creates two files and then uses background processes to write to them simultaneously. Without proper synchronization, the order of writing is not guaranteed, leading to data corruption or incomplete output. This is a classic example of a race condition in concurrent programming. 

## Solution

The solution script utilizes appropriate file locking mechanisms to prevent race conditions during file I/O operations.

## How to Reproduce

1. Clone this repository.
2. Run `bash bug.sh` to observe the race condition.
3. Run `bash bugSolution.sh` to see the corrected version.