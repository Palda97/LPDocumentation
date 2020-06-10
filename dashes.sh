#!/bin/bash

if [ $# -ne 1 ]
then
	echo "One and only one argument needed!"
	exit 1
fi

replace "README.md" "${1}-" "${1}\&#x2011;"
#sed -i "s/$1-/$1\&#x2011;/g" "README.md"
