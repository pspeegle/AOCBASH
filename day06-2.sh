#!/bin/bash

sed 's/^$/*/' data/data6.txt | tr '\n' ' ' | awk 'BEGIN{RS="*"}{for(i=1;i<=length($1);i++){print("-"NF);for(j=2;j<=NF;j++){if ($j~substr($1,i,1)){print "x"}}}}' | awk 'BEGIN{RS="-"}NF==$1{print ""}' | wc -l
