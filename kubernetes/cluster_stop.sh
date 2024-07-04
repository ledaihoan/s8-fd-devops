#!/usr/bin/env bash
#!/usr/bin/env bash
if [ -n "$1" ]; then
  DEPLOYMENT_ENV=$1
else
  DEPLOYMENT_ENV=development
fi
. load_config.sh $DEPLOYMENT_ENV
minikube stop -p $CLUSTER_NAME