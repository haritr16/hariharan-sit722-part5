# Your Solution
#!/bin/bash

kubectl delete -f kubernetes/hari-book-catalog-deployment.yaml
kubectl delete -f kubernetes/hari-book-catalog-service.yaml
kubectl delete -f kubernetes/hari-inventory-management-deployment.yaml
kubectl delete -f kubernetes/hari-inventory-management-service.yaml
