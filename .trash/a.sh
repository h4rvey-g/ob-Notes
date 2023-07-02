#!/bin/bash

# Specify the folder path
folder_path="./"

# Loop through all the files in the folder and subfolders
find "$folder_path" -type f -name "*.md" -print0 | while IFS= read -r -d '' file; do

    # Add the content to the beginning of each file
    {
        echo "---"
        echo "author: Harvey Guo"
        echo "created: <% tp.file.creation_date() %>"
        echo "modified: <% tp.file.last_modified_date() %>"
        echo "aliases: <% tp.file.title %>"
        echo "description:"
        echo "tags:"
        echo "share: true"
        echo "---"
        echo ""
        cat "$file"
    } > temp_file && mv temp_file "$file"

done
