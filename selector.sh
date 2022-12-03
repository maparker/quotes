#!/bin/bash
mysterynumber=$(( 1 + RANDOM % 10 ))

echo $mysterynumber

filename=https://raw.githubusercontent.com/maparker/quotes/main/quotes.txt
declare -a fortunes
IFS=$'\n'
fortunes=(`cat "$filename"`)

echo "${fortunes[mysterynumber]}"

echo "${#fortunes[@]}"
