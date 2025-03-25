#!/bin/bash

# docker hub username
docker_hub_user="fadlinarsin"

# image name
image_name="karsajobs-ui"

# image tag/version
image_tag="latest"

# docker hub image name format
docker_hub_image_name="$docker_hub_user/$image_name:$image_tag"

# Step by step dari instruksi submission dicoding 
echo "1. Build Docker image"
docker build -t $image_name:$image_tag .
docker tag $image_name:$image_tag $docker_hub_image_name

echo "2. Login ke Docker Hub"
docker login

echo "3. Mengunggah image ke Docker hub"
docker push $docker_hub_image_name

echo "Docker image berhasil di push ke Docker Hub: $docker_hub_image_name"