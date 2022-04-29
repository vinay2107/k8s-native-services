#!/bin/bash

set -x

CLUSTER_NAME=my-minikube
MEMORY=4096
CPU=2
NODES=2
DISK_SIZE=20000mb
K8S_VERSION=v1.25.2

minikube start -p $CLUSTER_NAME \
 --memory=$MEMORY \
 --cpus=$CPU \
 --disk-size=$DISK_SIZE \
 --nodes=$NODES \
 --addons=[dashboard metrics-server]
# --kubernetes-version=$K8S_VERSION \

minikube addons enable -p $CLUSTER_NAME metrics-server