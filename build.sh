#!/bin/bash

DOCKER_ROOT="/usr/local/bin";
KUBE_ROOT="/usr/local/bin";
APP_NAME="propensity-to-sell";
APP_VERSION="1.0.7"

#
# Perform docker build and tag with latest image
$DOCKER_ROOT/docker-compose -p "${APP_NAME}" build
$DOCKER_ROOT/docker-compose up -d

#
# Update Kubernetes
#INSTALLED=`${KUBE_ROOT}/kubectl get pods|grep ${APP_NAME}|wc -l`
#if [ $INSTALLED -ne 0 ]; then
#    $KUBE_ROOT/kubectl delete -f deployment.yaml
#fi
#$KUBE_ROOT/kubectl create -f deployment.yaml
