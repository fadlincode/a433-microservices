#!/bin/bash

# github username
github_user="fadlincode"

# package name
package_name="karsajobs"

# package tag/version
package_tag="latest"

# github package name format
github_package_name="$github_user/$package_name:$package_tag"

# Step by step dari instruksi submission dicoding 
echo "1. Build docker image"
docker build -t $github_package_name .
docker tag $github_package_name ghcr.io/$github_package_name

echo "2. Login ke GHCR"
docker login ghcr.io -u $github_user -p $GHCR_TOKEN

echo "3. Upload image ke GHCR"
docker push ghcr.io/$github_package_name

echo "Docker image berhasil di push ke GHCR: ghcr.io/$github_package_name"