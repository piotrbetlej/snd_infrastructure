#!/bin/bash
# Script removes N oldest files from directory
# if number of files X exceeded (uncomment!).

# Number of files to be removed.
TB_RM=2
MAXFILES=100

# List all files in reverse order sorted after acces time.
list=`ls /sound/*mp3 -rt`;

# Create list of N first (oldest) files.
v=`echo $list | tr [:blank:] '\n' | head -n $TB_RM`;

echo $v;
#echo "******";

# File count.
c=`echo $list|wc -w`;

#echo $c;

## If file count greater than X, remove N oldest files.
#if [ $c -gt $MAXFILES ];
#   then rm $v;
#fi;

rm $v;
