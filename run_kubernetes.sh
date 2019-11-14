#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=boston_houseprices_inference

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl run --generator=run-pod/v1 $dockerpath --image=dibaroy/boston_houseprices_inference:latest --port=80
# kubectl run --generator=run-pod/v1 --image=dibaroy/boston_houseprices_inference:latest --port=80
kubectl run boston-houseprices-inference --image=dibaroy/boston_houseprices_inference --generator=run-pod/v1 


# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
kubectl port-forward boston-houseprices-inference 8086:80