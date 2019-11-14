#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
# dockerpath="dibaroy/boston_houseprices_inference:latest"
dockerpath="dibaroy/boston_houseprices_inference"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username dibaroy
docker tag boston_houseprices_inference dibaroy/boston_houseprices_inference:latest

# Step 3:
# Push image to a docker repository
docker push dibaroy/boston_houseprices_inference:latest