#!/bin/bash

echo "0" >> data/data10.txt; sort -g data/data10.txt | awk 'BEGIN{RS=""}{c=0;d=1;for(i=2;i<=NF;i++){if($i-$(i-1)==1)c++;if($i-$(i-1)==3)d++;}{print c*d}}'; sed -i '$ d' data/data10.txt
