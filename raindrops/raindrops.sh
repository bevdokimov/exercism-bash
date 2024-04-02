#!/usr/bin/env bash

declare -a sounds=([3]=Pling [5]=Plang [7]=Plong)

if (($1 > 0)); then
	for i in "${!sounds[@]}"; do
		(($1 % i == 0)) && output+=${sounds[i]}
	done
fi

echo "${output:-$1}"
