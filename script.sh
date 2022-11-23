#!/usr/bin/env bash
set -x

function log() {
    S=$1
    echo $S | sed 's/./& /g'
}


  if: github.branch.ref == 'dev'
  kube_config: ${{ secrets.VALOR_PRO_KUBE_CONFIG_DEV }}
  if: github.branch.ref == 'homolog'
  kube_config: ${{ secrets.VALOR_PRO_KUBE_CONFIG_HML }}


pwd

ls -lha
env | sort 

env | sort |
while IFS='=' read -r key value; do
    log "$key"
done 
