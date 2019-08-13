#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=atchinnachot/devops

# Step 2:  
# Authenticate & tag
cat ~/.my_password.txt | docker login --username atchinnachot --password-stdin
docker tag 8422a9990d6d ${dockerpath}:ml-prediction1
echo "Docker ID and Image: ${dockerpath}"

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}:ml-prediction1
