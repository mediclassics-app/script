#!/bin/bash

echo "Zip each directory into individual zip file"

for i in */
echo 
echo "Archiving ... ${i%/}.zip"
do zip -r "${i%/}.zip" "$i"
done

# ref
# https://unix.stackexchange.com/questions/68489/command-to-zip-multiple-directories-into-individual-zip-files
