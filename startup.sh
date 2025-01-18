#!/bin/bash

morning_start_time="00:00"
morning_end_time="10:00"
evening_start_time="18:00"
evening_end_time="23:59"



current_time=$(date +"%H:%M")
# Check if the current time is within the morning or evening range
if [[ ("$current_time" > "$morning_start_time" && "$current_time" < "$morning_end_time") || 
      ("$current_time" > "$evening_start_time" && "$current_time" < "$evening_end_time") ]]; then
    echo "Running command: Opening browser"
    export BROWSER='/mnt/c/Program Files/BraveSoftware/Brave-Browser/Application/brave.exe'
    sensible-browser
else
    echo "Current time does not fall within any defined range."
fi
