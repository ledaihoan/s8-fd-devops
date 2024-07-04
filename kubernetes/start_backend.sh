#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_PATH=$CURRENT_DIR/../../s8-fd-server

if [ -n "$1" ]; then
  DEPLOYMENT_ENV=$1
else
  DEPLOYMENT_ENV=development
fi

cd $PROJECT_PATH
./update_docker_build.sh $3
cd $CURRENT_DIR
if [ -n "$3" ]; then
  kubectl apply -f $CURRENT_DIR/$DEPLOYMENT_ENV/s8-fd-server.deployment.yaml
else
  kubectl apply -f $CURRENT_DIR/$DEPLOYMENT_ENV/s8-fd-server.deployment.yaml
fi