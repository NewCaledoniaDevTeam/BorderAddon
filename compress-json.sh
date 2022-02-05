#!/bin/bash

for file in borderbp/**/**/*.json; do
    echo $(cat $file | grep -v "^\s*//") > $file
    jq -c < "$file" > "$file"
done

for file in borderbp/**/*.json; do
    echo $(cat $file | grep -v "^\s*//") > $file
    jq -c < "$file" > "$file"
done

for file in borderrp/**/**/*.json; do
    echo $(cat $file | grep -v "^\s*//") > $file
    jq -c < "$file" > "$file"
done

for file in borderrp/**/*.json; do
    echo $(cat $file | grep -v "^\s*//") > $file
    jq -c < "$file" > "$file"
done