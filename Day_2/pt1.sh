#!/bin/bash

IFS=,$'\n' read -d '' -r -a array <input.txt

declare -i pos=0
declare -i depth=0

for a in "${array[@]}"; do
    IFS=' '
    read -a strarr <<< "$a"
    if [ "${strarr[0]}" == 'forward' ]; then
        ((pos=pos+"${strarr[1]}"))
        echo "${pos}"
    fi

    if [ "${strarr[0]}" == 'down' ]; then
        ((depth=depth+"${strarr[1]}"))
        echo "${depth}"
    fi

    if [ "${strarr[0]}" == 'up' ]; then
        ((depth=depth-"${strarr[1]}"))
        echo "${depth}"
    fi

    echo "$((depth*pos))"
done 
