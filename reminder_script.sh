#!/bin/bash

REMINDER_INTERVAL=30  # time between reminders set to 30 min by default
REPEAT_COUNT=0        # Number of repetitions (0 = infinite)
MESSAGE="Time for a 5-minute break! Step away from the screen."

function reminder(){
echo -e "\n=============================="
    echo "$MESSAGE"
    echo "=============================="
}

# Main loop
count=0
while true; 
do
    sleep $((REMINDER_INTERVAL*60))   #sleep deals with seconds only
    reminder

    if [[ $REPEAT_COUNT -ne 0 ]]; then   # If the user wants to run the script a certain number of times
        count=$((count + 1))
        if [[ $count -ge $REPEAT_COUNT ]]; then
            break
        fi
    fi
done
