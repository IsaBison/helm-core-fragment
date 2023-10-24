#!/bin/bash

# Directory path
DIR="./mtf/meks"

# Loop through all files in the directory
for file in "$DIR"/*; do
    # Ensure that the item being processed is indeed a file
    if [[ -f "$file" ]]; then
        # Use sed to replace "Mek" with "Mech" on the second line of the file
        sed -i '' '2s/Mek/Mech/g' "$file"
    fi
done

echo "Replacement done!"
