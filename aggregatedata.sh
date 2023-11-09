#!/usr/bin/env bash

files=("."/cache-*)

# Calculate the midpoint index
total_files=${#files[@]}
midpoint=$((total_files / 2))

# Sort files by creation time
sorted_files=($(ls -t "${files[@]}"))

# Concatenate the first half of the sorted files
cat "${sorted_files[@]:0:$midpoint}" > load_phase.txt

# Concatenate the second half of the sorted files
cat "${sorted_files[@]:$midpoint}" > run_phase.txt

echo "Concatenation completed. Check load_phase.txt and run_phase.txt"