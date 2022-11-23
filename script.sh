#!/usr/bin/env bash
set -x

function log() {
    S=$1
    echo $S | sed 's/./& /g'
}


echo $KUBE_CONFIG

pwd

ls -lha
env | sort 

env | sort |
while IFS='=' read -r key value; do
    log "$key"
done 
