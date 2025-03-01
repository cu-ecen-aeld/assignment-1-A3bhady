#!/bin/bash

if [ -z $1 ] || [ -z $2 ]
then
	echo "Usage: $0 <file_path> <writting_sting>"
	exit 1
fi

writefile=$1
writestr=$2

if [ -d ${writefile%/*} ]
then
	echo $writestr > $writefile
else
	mkdir -p "${writefile%/*}"
	echo $writestr > $writefile
fi

if [ ! -e $writefile ]
then
	echo Error: The file was not created
	exit 1
fi



