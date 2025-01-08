#!/bin/bash

x=$2

echo "starting CASE selection"
case $x in
	1) echo "the x is number one";;
	[2-9]) echo "the x is numer two-nine";;
	"fedor") "Darova $x";;
	*) echo "wtf? error input!"
esac