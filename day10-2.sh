#!/bin/bash

echo "0" >> data/data10.txt; sort -g data/data10.txt | awk 'BEGIN{RS=""}{k=0;for(i=2;i<=NF;i++){if($i-$(i-1)==1)k++;else{print k*k/2-k/2+1"*";k=0;}}print k*k/2-k/2+1}' | tr -d '\n' | echo $(cat) | bc; sed -i '$ d' data/data10.txt
