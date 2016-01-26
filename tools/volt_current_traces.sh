#!/bin/bash
# laura Oct. 9, 2015
# Selects the time and currents for every voltage
# Usage:just execute name_ without the number and it will generate on table with all currents at different volatges in name_merged_bash.txt 
for i in `seq 0 19`
do cut -f 3 -d ' ' "$1${i}.txt" > "temp_${i}.txt" 
#do echo $files;
done;
cut -f 2 -d' ' end__0_0.txt > time.txt
paste -d " " time.txt temp_{0..19}.txt > "$1"merged_bash.txt
rm temp_{0..19}.txt time.txt


