#!/bin/bash

# Apply the Kubernetes configurations to deploy the services
kubectl apply -f kubernetes/hari-book-catalog-deployment.yaml
kubectl apply -f kubernetes/hari-book-catalog-service.yaml
kubectl apply -f kubernetes/hari-inventory-management-deployment.yaml
kubectl apply -f kubernetes/hari-inventory-management-service.yaml
