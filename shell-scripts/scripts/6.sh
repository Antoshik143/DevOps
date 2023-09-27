#!/bin/bash

directory=$( pwd )
count_files=$( ls | wc -l )
list_files=$( ls -l | awk '{print $9, $5}' | tail -n $count_files )

for ((i=1; i<=count_files; i++)); do
    file=$( echo "$list_files" | sed -n "${i}p")
    echo $file
done
