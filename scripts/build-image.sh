#!/bin/bash
ACR_NAME=$(terraform output -raw acr_name)

# Build Docker images
docker build -t $ACR_NAME.azurecr.io/book-catalog:latest ./book_catalog
docker build -t $ACR_NAME.azurecr.io/inventory-management:latest ./inventory_management

# Push Docker images to ACR
docker push $ACR_NAME.azurecr.io/book-catalog:latest
docker push $ACR_NAME.azurecr.io/inventory-management:latest
