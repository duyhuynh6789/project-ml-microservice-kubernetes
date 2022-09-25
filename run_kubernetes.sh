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
kubectl expose pod predict-kubernate-7fdb658ffc-8t7lv --port=80 --name=api
kubectl port-forward pod/predict-kubernate-7fdb658ffc-8t7lv 8080:80