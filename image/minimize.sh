#!/bin/bash

# Minimize black and white image file size with imagemagick

read -p 'Relative path of org file [img]: ' ORGPATH
read -p 'Relative path of New file [rst]: ' NEWPATH
read -p 'File extension [png]: ' FILETYPE
read -p 'Convertion threshold %[30]: ' TS

ORGPATH=${ORGPATH:-img}
NEWPATH=${NEWPATH:-rst}
FILETYPE=${FILETYPE:-png}
TS=${TS:-30}

for FILENAME in ${ORGPATH}/*.${FILETYPE}
do
RST=$(basename $FILENAME)
echo "${FILENAME} ...> ${NEWPATH}/${RST}"
convert $FILENAME -negate -threshold ${TS}% -negate ${NEWPATH}/${RST}
done
