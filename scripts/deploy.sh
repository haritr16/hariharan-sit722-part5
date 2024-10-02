# Your Solution

#!/bin/bash

kubectl apply -f kubernetes/hari-book-catalog-deployment.yaml
kubectl apply -f kubernetes/hari-book-catalog-service.yaml
kubectl apply -f kubernetes/hari-inventory-management-deployment.yaml
kubectl apply -f kubernetes/hari-inventory-management-service.yaml
