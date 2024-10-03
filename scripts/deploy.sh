#!/bin/bash

#kubectl delete -f kubernetes/deployment.yaml
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -

