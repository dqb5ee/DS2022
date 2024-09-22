#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xvzf lab3-bundle.tar.gz

EXTRACTED_TSV="lab3_data.tsv"

awk '!/^[[:space:]]*$/' $EXTRACTED_TSV > cleaned_data.tsv

awk 'BEGIN { FS="\t"; OFS="," } { $1=$1; print }' cleaned_data.tsv > cleaned_data.csv
data_lines=$(($(wc -l < cleaned_data.csv) - 1))

echo "Number of data lines: $data_lines"

tar -cvzf converted-archive.tar.gz cleaned_data.csv
