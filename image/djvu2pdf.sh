#!/bin/bash

# Require
# * imagemagick

echo "Convert djvu to pdf"

# "input.djvu"
read -p 'Input file name: ' INPUTFILE
[[ -z "$INPUTFILE" ]] && echo "There is no input" && exit 1

# "output.pdf"
read -p 'Output file name: ' OUTPUTFILE
[[ -z "$OUTPUTFILE" ]] && echo "There is no input" && exit 1

convert ${INPUTFILE} ${OUTPUTFILE}
