#!/bin/bash

# Specify the folder path
folder_path="./"


    # Delete the 6th and 7th lines from each file
    sed -i '6,7d' "$file"

done