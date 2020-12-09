#!/bin/bash

sed "s/[: ]/-/g" data/data2.txt | awk 'BEGIN{FS="-"}{if($5~"^([^"$3"]*"$3"[^"$3"]*){"$1","$2"}$")print}' | wc -l
