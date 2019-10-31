#!/bin/bash

tr '[:space:]' '\n' < $1 | sort -S 10G | uniq -c | sort -nr | awk '{print $2"\t"$1}' > $1".count"
