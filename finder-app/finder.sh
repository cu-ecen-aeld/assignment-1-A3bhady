#!/bin/bash

if [ -z $1 ] || [ -z $2 ] 
then
	echo "Usage: $0 <directory_path> <search_string>"
	exit 1
fi

# Assign arguments to variables
filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]
then
	echo "Error: '$filesdir' is not a valid directory."
	exit 1
fi


# count the number of files in the directory and subdirectories
num_files=$(find "$filesdir" -type f | wc -l)

# Count the number of matching lines in all files

num_matches=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_matches"


