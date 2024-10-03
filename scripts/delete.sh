# Your Solution
#!/bin/bash
envsubst < ./scripts/kubernetes/deployment.yaml | kubectl delete -f -

