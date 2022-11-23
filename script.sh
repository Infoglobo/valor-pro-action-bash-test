#!/usr/bin/env bash
set -x
pwd

ls -lha

env | sort |
while IFS='=' read -r key value; do
    echo "$key"
done 
