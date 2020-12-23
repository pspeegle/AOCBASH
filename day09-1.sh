#!/bin/bash

awk 'BEGIN{RS=""}{for(k=26;k<=NF;k++){for(i=(k-25);i<k;i++){for(j=(k-25);j<i;j++){if($i+$j==$k){print k}}}}}' data/data9.txt | awk 'BEGIN{RS='\n'}{for(i=2;i<=NF;i++){if($i-$(i-1)>1){print $i-1}}}' | sed -n $(cat)p data/data9.txt
