#!/bin/bash

api_key="3F4CF60E54434DA1AF412AF724100C7A"
output_filepath=$1

echo ${output_filepath}

curl -k \
    -H "X-Api-Key:${api_key}" \
    -F "select=false" \
    -F "print=false" \
    -F "file=@${output_filepath}" \
    "http://octopi.local/api/files/local"

rm -f ${output_filepath}
