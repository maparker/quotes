#!/bin/bash

filename=quotes.txt
declare -a fortunes
IFS=$'\n'
fortunes=(`cat "$filename"`)

totalQuotes=$(echo "${#fortunes[@]}")

mysterynumber=$(( 1 + RANDOM % ${totalQuotes} ))
echo ${mysterynumber}
echo "${fortunes[mysterynumber]}"


