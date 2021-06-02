#!//bin/bash
# File: pomodoro.sh

today=$(date +%F) #today as yyyy-mm-dd
say="Completed pomodoro at $(date +%s)" #unix time

echo $say #print to terminal

if [ ! -d "logs" ] #check if logs dir doesn't exist
then
    mkdir logs #initialize logs dir
fi

echo $say >> logs/$today.txt #append completed pomodoro to today's txt in logs dir
