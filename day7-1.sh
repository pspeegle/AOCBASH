#!/bin/bash

r() { eval "$(awk -v m="$1" '{if($0~".*c.*"m){print "r \""$1" "$2"\""}}' data/data7.txt)"; echo "$1";}; r "shiny gold" | sort | uniq | wc -l | echo $(cat)-1 | bc
