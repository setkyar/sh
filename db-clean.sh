#!/bin/bash

if [ -f "${1}" ]; then
    clean_outfile="${1%%.*}-outfile.sql"
    sed -E "s/(X'[^,\)]*')/CONVERT(\1 using utf8mb4)/g" "${1}" > "${clean_outfile}"

    echo "Clean up file available on ${clean_outfile}"
else 
    echo "${1} does not exist"
fi