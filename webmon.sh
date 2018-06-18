#!/bin/bash

ERRORS=""

while IFS='' read -r line || [[ -n "$line" ]]; do
    if ! curl -Lf $line > /dev/null 2>&1; then
        ERRORS="yes"
        echo "Hitting $line failed!"
    fi
done < "$1"

if [[ -n $ERRORS ]]; then
    exit 1
fi
