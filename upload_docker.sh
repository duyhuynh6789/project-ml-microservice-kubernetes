#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=duyhuynhdn/devops-project4-api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
#docker login -u YOUR_USER_NAME --p YOUR_PASSWORD
docker tag api $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
