#!/bin/ksh

# Just a reader for lesspub! 

while getopts h:t o
do	case "$o" in
	h) links ~/Books/"$2"*/*.html;;
	t) less -s -M +Gg ~/Books/"$2"*/*.txt;;
	*) printf "enter an option! (h for html, t for text!)\\n"
	esac
done
