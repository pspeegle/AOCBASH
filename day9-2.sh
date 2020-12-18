#!/bin/bash

sh day9-1.sh | awk -v m="$(cat)" 'BEGIN{RS=""}{for(i=1;i<NF;i++){sum=0;for(j=i;j<NF;j++){sum+=$j;if(sum==m){for(k=i;k<=j;k++)print $k;exit;}}}}' data/data9.txt | sort -g | awk 'BEGIN{RS=""}{print $1+$(NF)}'
