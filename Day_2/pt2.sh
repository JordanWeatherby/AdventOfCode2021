#!/bin/bash

IFS=,$'\n' read -d '' -r -a array <input.txt

declare -i pos=0
declare -i depth=0
declare -i aim=0

for a in "${array[@]}"; do
    IFS=' '
    read -a strarr <<< "$a"
    if [ "${strarr[0]}" == 'forward' ]; then
        ((pos=pos+"${strarr[1]}"))
        ((depth=depth+(aim*"${strarr[1]}")))
        echo "${pos}"
    fi

    if [ "${strarr[0]}" == 'down' ]; then
        ((aim=aim+"${strarr[1]}"))
        echo "${aim}"
    fi

    if [ "${strarr[0]}" == 'up' ]; then
        ((aim=aim-"${strarr[1]}"))
        echo "${aim}"
    fi

    echo "$((depth*pos))"
done 
