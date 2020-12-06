#!/bin/bash

awk 'BEGIN{RS="";FS="\n"}{for(i=1;i<=NF;i++){for(j=1;j<=i;j++){for(k=1;k<=j;k++){if($i+$j+$k == 2020){printf("%d\n", $i*$j*$k)}}}}}' data/data1.txt
