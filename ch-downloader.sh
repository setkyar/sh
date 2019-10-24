#!/bin/bash

if [ ! "${1}" ] || [ ! "${2}" ] || [ ! "${3}" ]; then
    echo "You need to pass first arugment as course-path";
    echo "You need to pass second arugment as couse videos";
    echo "You need to pass third arugment as API versions (v1, v2, v3)";
    exit 1
fi

for i in $(eval echo {1..$2});
do
    echo "Downloading Now!";

    wget "https://{$3}.coursehunter.net/${1}/lesson${i}.mp4" -P ${1}
done