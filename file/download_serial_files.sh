#!/bin/bash

# web 상에 있는 연속되는 파일을 내려받아 보자
# first file address : http://file.sorce.com/pdf/GK00132_00KS_0001.pdf
# last file address : http://file.sorce.com/pdf/GK00132_00KS_0185.pdf


# "http://file.sorce.com/pdf/GK00132_00KS_"
read -p 'Common address head: ' ADDRHEAD
[[ -z "$ADDRHEAD" ]] && echo "There is no input" && exit 1

# ".pdf"
read -p 'Common address tail: ' ADDRTAIL
[[ -z "$ADDRTAIL" ]] && echo "There is no input" && exit 1

# 1
read -p 'Begin Num: ' BGN
[[ -z "$BGN" ]] && echo "There is no input" && exit 1

# 185
read -p 'End num: ' EDN
[[ -z "$EDN" ]] && echo "There is no input" && exit 1

# 4
read -p 'Zero padding size: ' ZPS
[[ -z "$ZPS" ]] && echo "There is no input" && exit 1


for i in $(seq -f "%0${ZPS}g" ${BGN} ${EDN})
do
  FILEURI="${ADDRHEAD}${i}${ADDRTAIL}"
  echo
  echo "Try to download file  ... ${FILEURI}"
  wget "${FILEURI}" # -O ${i}.pdf
done
