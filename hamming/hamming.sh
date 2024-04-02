#!/usr/bin/env bash

error() {
    printf '%s\n' "$*"
    exit 1
}

[[ "$#" -ne 2 ]] && error "Usage: hamming.sh <string1> <string2>"

a=$1 b=$2

[[ "${#a}" -ne "${#b}" ]] && error "strands must be of equal length"

distance=0
for (( i=0; i<${#a}; i++ )); do
    if [ "${a:i:1}" != "${b:i:1}" ]; then
	((distance++))
    fi
done
echo $distance
