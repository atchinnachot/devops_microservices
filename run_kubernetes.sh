#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=atchinnachot/devops:ml-prediction1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run kube-prediction-app --image="${dockerpath}"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/kube-prediction-app 8000:80
