#!/bin/bash

tr '[:space:]' '\n' < $1 | sort -S 10G | uniq -c | awk '{print $2"\t"$1}' > $2
