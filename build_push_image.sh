#!/bin/bash

# docker hub username
docker_hub_user="fadlinarsin"

# image name
image_name="item-app"

# image tag/version
image_tag="v1"

# docker hub image name format
docker_hub_image_name="$docker_hub_user/$image_name:$image_tag"

# Step by step dari instruksi submission dicoding 
echo "1. Build Docker image"
docker build -t $image_name:$image_tag .

echo "2. Cek daftar image"
docker images | grep $image_name

echo "3. Mengubah nama image sesuai format docker hub"
docker tag $image_name:$image_tag $docker_hub_image_name

echo "4. Login ke Docker Hub"
docker login

echo "5. Mengunggah image ke Docker hub"
docker push $docker_hub_image_name

echo "Docker image berhasil di push ke Docker Hub: $docker_hub_image_name"
