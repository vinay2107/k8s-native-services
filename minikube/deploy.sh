#!/bin/bash

set -x

CLUSTER_NAME=my-minikube
MEMORY=4096
CPU=4
NODES=2
DISK_SIZE=2000mb
K8S_VERSION=v1.25.2
ADDONS_LIST=(dashboard olm)

minikube start -p $CLUSTER_NAME \
 --memory=$MEMORY \
 --cpus=$CPU \
 --disk-size=$DISK_SIZE \
 --nodes=$NODES \
# --kubernetes-version=$K8S_VERSION \
# --addons=[$ADDONS_LIST]
