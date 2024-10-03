# Your Solution
#!/bin/bash
docker push $CONTAINER_REGISTRY.azurecr.io/book_catalog:$VERSION
docker push $CONTAINER_REGISTRY.azurecr.io/inventory_management:$VERSION
