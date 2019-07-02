#!/bin/bash

# 흰색과 검정색 이미지로 변환 (거친 결과)

# Require
# * imagemagick

echo "Convert Image to black and white image"

# "input.pdf"
read -p 'Input file name: ' INPUTFILE
[[ -z "$INPUTFILE" ]] && echo "There is no input" && exit 1

# "output.pdf"
read -p 'Output file name: ' OUTPUTFILE
[[ -z "$OUTPUTFILE" ]] && echo "There is no input" && exit 1

# 50
read -p 'Threshold %[50]: ' THS
THS=${THS:-50}

convert ${INPUTFILE} -threshold ${THS}% -compress fax ${OUTPUTFILE}
