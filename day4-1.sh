#!/bin/bash

sed 's/^$/*/' data/data4.txt | awk 1 ORS=' ' | awk 'BEGIN{RS="*"} !/byr/ {next} !/iyr/ {next} !/eyr/ {next} !/hgt/ {next} !/hcl/ {next} !/ecl/ {next} !/pid/ {next} {print}' | wc -l
