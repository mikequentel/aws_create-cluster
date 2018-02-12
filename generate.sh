#!/bin/bash
NAME=$1

if [ -z "${NAME}" ]; then
  echo 'Name of cluster is missing.'
  exit 1
fi
aws ecs create-cluster --cluster-name ${NAME}
aws ecs list-clusters
