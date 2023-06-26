#!/bin/bash
FILESDIR=$1
SEARCHSTR=$2

if [! -d "$FILESDIR" ]
then
	echo "Please enter a valid directory."
	exit 1
elif [ -z "$SEARCHSTR" ]
then
	echo "Please enter a valid search string."
	exit 1
else
	find / -name "$FILESDIR" | echo
	exit 0
fi
