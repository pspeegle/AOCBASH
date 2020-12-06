#!/bin/bash

cat data/data5.txt | tr "FBRL" "0110" | sort | tail -1 | sed 's/.*/2i&p/' | dc
