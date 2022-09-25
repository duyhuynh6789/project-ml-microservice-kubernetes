#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=duyhuynhdn/devops-project4-api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy predict-kubernate --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/predict-kubernate 80:80

