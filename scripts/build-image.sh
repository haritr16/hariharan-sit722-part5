# Your Solution
#!/bin/bash

docker build -t hari-acr.azurecr.io/book-catalog:latest ./book_catalog
docker build -t hari-acr.azurecr.io/inventory-management:latest ./inventory_management
