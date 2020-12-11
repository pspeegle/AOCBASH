#!/bin/bash

r() { awk '{if($j~".*contain.*shiny gold"){print $1" "$2}}' data/data7.txt;}; r
