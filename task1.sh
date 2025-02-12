#!/bin/bash

sh infinite.sh
ps aux | grep "sh infinite.sh" | grep -v grep | awk '{print $2}' | xargs kill -9
echo "Process killed Successfully"