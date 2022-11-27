#!/bin/bash

# melakukan build image item-app
docker build -t item-app:v1 .

# Melihat daftar images pada docker engine
docker images

# Merubah nama image dengan format Github Packages
docker tag $(docker image ls --filter="reference=item-app:v1" --format={{.ID}}) ghcr.io/harisrahmannst/item-app:v1

# Sebelum perintah dibawah kita perlu membuat token dahulu di github
# lalu jalankan perintah export CR_PAT=YOUR_TOKEN 
#Login ke Github Packages
echo $CR_PAT | docker login ghcr.io -u harisrahmannst --password-stdin

# Push image ke Github
docker push ghcr.io/harisrahmannst/item-app:v1