#!/bin/bash

# Specify the directory path. Replace with your directory.
DIR="./mtf/meks"

# Loop through all files in the directory
for file in "$DIR"/*; do
    # Extract just the name of the file
    filename=$(basename -- "$file")
    # Get the directory path without the filename
    filepath=$(dirname -- "$file")

    # Check if it is a regular file (not a directory, etc.)
    if [[ -f "$file" ]]; then
        # Check if the filename contains "Mek" or "mek"
        if [[ "$filename" == *"Mek"* || "$filename" == *"mek"* ]]; then
            # Construct the new file name by replacing "Mek" with "Mech" and "mek" with "mech"
            newfilename=$(echo "$filename" | sed 's/Mek/Mech/g; s/mek/mech/g')
            newfile="$filepath/$newfilename"

            # Copy the file to the new file
            cp "$file" "$newfile"

            # Optional: Uncomment the line below to show which files were duplicated
            # echo "Duplicated: $file to $newfile"
        fi
    fi
done

echo "Operation completed!"