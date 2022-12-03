#!/bin/bash
mysterynumber=$(( 1 + RANDOM % 10 ))

echo $mysterynumber

filename=/Users/mattparker/fortunes.txt
declare -a fortunes
IFS=$'\n'
fortunes=(`cat "$filename"`)

echo "${fortunes[mysterynumber]}"

echo "${#fortunes[@]}"
