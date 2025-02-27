#!/bin/bash

# Set the directory containing the PlantUML files
directory="${1:-.}" # Default to current directory if none provided

# Set the output file name
output_file="all.puml"

# Check if the directory exists
if [[ ! -d "$directory" ]]; then
  echo "Error: Directory '$directory' not found."
  exit 1
fi

# Find all .puml files in the directory and its subdirectories, then concatenate them
find "$directory" -type f -name "*.puml" -print0 | sort -z | xargs -0 cat > "$output_file"

# Check if the output file was created
if [[ -f "$output_file" ]]; then
  echo "Successfully created '$output_file' containing all .puml files from '$directory'."
else
  echo "Error: Failed to create '$output_file'."
  exit 1
fi

exit 0
