#! /bin/bash

# Takes the argument of a file name

echo $1

# Sorts the contents of the file stored in an argument using sort command
sort $1 > sorted.txt  


# If statment to check if the file does not end in .txt
if [[ $1 == *.txt ]]
	then echo "file ends in .txt"
else
	echo "file format is not alowed"
fi

