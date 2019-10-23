#!/bin/bash

cd "${1}"

#Check PHPSyntax when trying out git status
files=`git status --porcelain | grep -E '.php$'`

if [[ files ]]; then
  	for file in $files; do
  		if [[ $file == *".php" ]]; then
  			php -l $file
  		fi
	done
fi