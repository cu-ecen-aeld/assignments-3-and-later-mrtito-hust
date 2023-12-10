#!/bin/sh

if [ $# -eq 2 ]
then
    #Get the first passing argument, it is path to a directory
    filesdir=$1

    #Get the second passing argument, it is text string that will be searched
    searchstr=$2
    if [ -d "$filesdir" ]
    then
        numfiles=$(find "$filesdir" -type f | wc -l)
        linematches=$(grep -r "$searchstr" $filesdir | wc -l)
        echo "The number of files are $numfiles and the number of matching lines are $linematches \r\n"
        exit 0
    else
        echo "This is not a directory"
        exit 1
    fi
    exit 0
else
    echo "Number of argument is wrong"
    exit 1
fi



