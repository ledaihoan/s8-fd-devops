#!/usr/bin/env bash
#kubectl create secret docker-registry s8-fd-docker-registry --docker-server=https://index.docker.io/v1/ --docker-username=example_username --docker-password=examplePass1@ --docker-email=example@email.com
kubectl create secret docker-registry s8-fd-docker-registry --docker-server=https://index.docker.io/v1/ --docker-username=$1 --docker-password=$2 --docker-email=$3