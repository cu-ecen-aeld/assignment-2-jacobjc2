#!/bin/bash
FILESDIR=$1
SEARCHSTR=$2

if [ ! -d "$FILESDIR" ]
then
	echo "Please enter a valid directory."
	exit 1
elif [ -z "$SEARCHSTR" ]
then
	echo "Please enter a valid search string."
	exit 1
else
	# find "$FILESDIR" -type d
	# find "$FILESDIR" -type d | xargs grep -r "$SEARCHSTR"
	echo "The number of files are $(find "$FILESDIR" -type f | wc -l) and the number of matching lines are $(find "$FILESDIR" -type d | xargs grep -r "$SEARCHSTR" | wc -l)"
	exit 0
fi
