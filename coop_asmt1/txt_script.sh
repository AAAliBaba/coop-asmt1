#!/bin/bash
echo "Week 1 Assignment Shell Script by Arafat Arman"

directory="textfiles" #directory that contains all .txt files we want to change
cd $directory

#parsing through each .txt file in current directory
for file in *.txt; do

	line_count=$(cat $file | wc -l) #stores only file line count 
	file_name=$(basename $file) #stores file name+extension

echo "$file_name has $line_count lines"
	#conditional checks
	if [ $line_count -eq 0 ]; then
		echo "Deleting $file_name ..."
		rm $file
	elif [ $line_count -lt 10 ]; then
		echo "Renaming $file_name to short_$file_name ..."
		mv $file_name "short_$file_name"
	elif [ $line_count -ge 10 -a $line_count -le 20 ]; then
		echo "Renaming $file_name to medium_$file_name ..."
		mv $file_name "medium_$file_name"
	else
		echo "Renaming $file_name to long_$file_name ..."
		mv $file_name "long_$file_name"
	fi
done

echo "Script complete"