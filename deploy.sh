#! /bin/bash

export APP_NAME=
export IMAGE_NAME=
export IMAGE_TAG=
export NAMESPACE=
export REPO=maven
export TAG=3.9.4-amazoncorretto-al2023

echo "####################### SETUP VARS ###############################"
cat .kubernetes/namespace.yaml.tpl | envsubst > .kubernetes/namespace.yaml
cat .kubernetes/deploy.yaml.tpl | envsubst > .kubernetes/deploy.yaml
cat .kubernetes/service.yaml.tpl | envsubst > .kubernetes/service.yaml
cat .kubernetes/ingress.yaml.tpl | envsubst > .kubernetes/ingress.yaml
echo "####################### START DEPLOY TO CLUSTER ##################"
kubectl apply -f ./kubernetes/namespace.yaml
kubectl apply -f ./kubernetes/deploy.yaml
kubectl apply -f ./kubernetes/service.yaml
kubectl apply -f ./kubernetes/ingress.yaml
echo "####################### END DEPLOY ##############################"