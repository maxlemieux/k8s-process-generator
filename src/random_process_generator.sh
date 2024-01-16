#!/bin/bash

# Define an array of color names to use as process names
COLORS=("Red" "Green" "Blue" "Yellow" "Purple" "Orange" "Pink" "Cyan" "Magenta" "Lime")

# Function to generate a random process
generate_random_process() {
  # Pick a random color name for the process
  local color_name="${COLORS[$RANDOM % ${#COLORS[@]}]}"
  
  # Generate a random lifespan for the process between 5 and 30 seconds
  local lifespan=$((5 + RANDOM % 26))
  
  # Print info about the process
  echo "Starting process '$color_name' with a lifespan of $lifespan seconds"
  
  # Use `sleep` to simulate a process with the chosen lifespan
  sleep $lifespan &
  
  # Rename the sleep process to the chosen color name
  # Note: `exec -a` is used to run a command with a different name
  exec -a "$color_name" sleep $lifespan
}

# Loop to continuously generate random processes
while true; do
  generate_random_process
  
  # Wait for a random time between process generations to avoid CPU exhaustion
  sleep $((1 + RANDOM % 5))
done
