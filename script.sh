#!/usr/bin/env bash
set -x

function log() {
    S=$1
    echo $S | sed 's/./& /g'
}
log $ACTIVE_KUBE_CONFIG

echo "${ACTIVE_KUBE_CONFIG}" | base64 -d > /tmp/config1

export KUBECONFIG=/tmp/config1
kubectl version
kubectl get ns

pwd

ls -lha
env | sort 

env | sort |
while IFS='=' read -r key value; do
    log "$key"
done 
