#!/bin/bash
WRITEFILE=$1
WRITESTR=$2

if [ -z "$1" ]
then
	echo "No file supplied"
	exit 1
elif [ -z "$2" ]
  then
	echo "No content supplied"
	exit 1
else
	mkdir -p "${WRITEFILE%/*}"
	echo "$WRITESTR" > $WRITEFILE
	exit 0
fi
