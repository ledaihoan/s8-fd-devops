#!/usr/bin/env bash
if [ -n "$1" ]; then
  DEPLOYMENT_ENV=$1
else
  DEPLOYMENT_ENV=development
fi
. load_config.sh $DEPLOYMENT_ENV
minikube start -p $CLUSTER_NAME --driver $CLUSTER_DRIVER --kubernetes-version=$CLUSTER_KUBERNETES_VERSION --cpus $CLUSTER_NUMBER_OF_CPU --memory $CLUSTER_RAM_SIZE_MB --static-ip $CLUSTER_STATIC_IP