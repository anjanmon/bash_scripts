#!/bin/bash

start_time="00:00"
end_time="10:00"
current_time=$(date +"%H:%M")

# Check if the current time is within the range
if [[ "$current_time" > "$start_time" && "$current_time" < "$end_time" ]]; then
    # Command to run if the time is within the range
    echo "Running command: Opening browser"
    	export BROWSER='/mnt/c/Program Files/BraveSoftware/Brave-Browser/Application/brave.exe'
	sensible-browser
   fi
