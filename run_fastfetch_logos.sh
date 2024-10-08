#!/bin/bash

# Specify the input file
input_file="cleaned_logos_list.txt"

# Check if the file exists
if [[ ! -f "$input_file" ]]; then
    echo "File $input_file not found!"
    exit 1
fi

# Read each line from the file and run fastfetch with the logo
while IFS= read -r logo; do
    echo "Running fastfetch with logo: $logo"
    fastfetch --logo "$logo"
done < "$input_file"

