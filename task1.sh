# filepath: /home/nazia/Desktop/Nazia/CSC510/wrangling-homework4/task1.sh
#!/bin/bash

# Start the infinite.sh script in the background
sh infinite.sh

# Give it a moment to start
sleep 1

# Find the process ID (PID) of the infinite.sh script
PID=$(pgrep -f infinite.sh)

# Check if the PID exists and kill the process
if [ -n "$PID" ]; then
    kill -9 $PID
    echo "Killed infinite.sh with PID $PID"
else
    echo "infinite.sh is not running"
fi