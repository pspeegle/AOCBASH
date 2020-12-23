#!/bin/bash

cat data/data5.txt | tr "FBRL" "0110" | sort | sed 's/.*/2i&p/' | dc | awk 'BEGIN{RS='\n'}{for(i=2;i<=NF;i++){if($i-$(i-1)!=1){print $i-1; break}}}'
