#!/bin/bash

sed 's/^$/*/' data/data6.txt | awk 1 ORS=' ' | awk 'BEGIN{RS="*"} {gsub (" ", "", $0); print}' | awk '{for(i=1;i<=length($0);i++){a[substr($0,i,1)]=1} for(i in a){printf("%s",i)} print "";delete a}' | tr -d '\n' | wc -m
