#!/bin/sh

export AWS_ACCESS_KEY_ID=$1
export AWS_SECRET_ACCESS_KEY=$2
export AWS_REGION=$3
CLUSTER_NAME=$4

aws eks update-kubeconfig --region $AWS_REGION --name $CLUSTER_NAME
kubectl delete --all pods
kubectl delete --all services