#!/bin/bash

# Get the Twilio info
SID=$(grep "TwilioSID" ~/.secrets | cut -d ' ' -f2)
Token=$(grep "TwilioToken" ~/.secrets | cut -d ' ' -f2)

# Change to the repo directory and update the repon from remote.
cd /Users/mattparker/Documents/quotes/
gh repo sync

# Define quote file
quoteFile=$(cat /Users/mattparker/Documents/quotes/quotes.txt)
#echo $quoteFile

# Setup array from quote file
declare -a quotes
IFS=$'\n'
quotes=(`echo "$quoteFile"`)

# Count number of items in array
totalQuotes=$(echo "${#quotes[@]}")

# Pick a random number from the total number of lines in the quote file.
randomNumber=$(( RANDOM % ${totalQuotes} ))
#echo ${totalQuotes}
#echo ${randomNumber}

# Randomly pick a quote
selectedQuote=$(echo "${quotes[randomNumber]}")
#echo ${selectedQuote}

#curl -X POST https://api.twilio.com/2010-04-01/Accounts/${SID}/Messages.json \
#--data-urlencode "Body=${selectedQuote}" \
#--data-urlencode "From=+18058746530" \
#--data-urlencode "To=+17043505464" \
#-u ${SID}:${Token}