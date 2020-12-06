#!/bin/bash

awk 'BEGIN {RS=""; FS="\n"}{for (i=1; i <= NF; i++){for(j=1; j <= i; j++){if($i+$j == 2020){printf("%d\n", $i*$j)}}}}' data/data1.txt
