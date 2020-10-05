#!/bin/bash

echo ${DOT_KUBE_CONFIG} >~/.kube/config.json

export KUBECONFIG=~/.kube/config.json

kubectl config get-contexts
kubectl cluster-info
