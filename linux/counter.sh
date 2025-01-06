#!/bin/bash

counter=0
while [$counter -lt 10]; do # less than
echo "current cycle is $counter"
counter=$((counter+1))
#let counter= COUNTER+1
#let counter= COUNTER+=1
done