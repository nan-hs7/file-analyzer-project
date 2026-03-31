#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Tool you use daily: " TOOL
read -p "2. Meaning of freedom: " FREEDOM
read -p "3. Something you would build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I reflect on open source. I use $TOOL daily. To me, freedom means $FREEDOM. I aspire to build $BUILD and share it with the world." > $OUTPUT

echo "Manifesto saved to $OUTPUT"
cat $OUTPUT

