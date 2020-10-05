#!/usr/bin/env sh

echo ${DOT_KUBE_CONFIG} >~/.kube/config

kubectl config get-contexts
kubectl clusterinfo
