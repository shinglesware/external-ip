#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 <OUTPUT_FILE>"
    exit 1
fi

OUT="$1"

curl --silent https://api.github.com/meta | jq -r .git[] > $OUT
