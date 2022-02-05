#!/bin/bash

for file in borderbp/*.json; do
    echo $(cat $file | grep -v "^\s*//") > $file
    echo $(cat $file | jq -c .) > $file
done

for file in borderbp/**/*.json; do
    echo $(cat $file | grep -v "^\s*//") > $file
    echo $(cat $file | jq -c .) > $file
done

for file in borderrp/*.json; do
    echo $(cat $file | grep -v "^\s*//") > $file
    echo $(cat $file | jq -c .) > $file
done

for file in borderrp/**/*.json; do
    echo $(cat $file | grep -v "^\s*//") > $file
    echo $(cat $file | jq -c .) > $file
done