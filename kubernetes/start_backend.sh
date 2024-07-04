#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -n "$1" ]; then
  DEPLOYMENT_ENV=$1
else
  DEPLOYMENT_ENV=development
fi

kubectl apply -f $CURRENT_DIR/$DEPLOYMENT_ENV/s8-fd-server.deployment.yaml
