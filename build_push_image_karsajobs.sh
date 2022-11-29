#!/bin/bash

# melakukan docker build
docker build -t ghcr.io/harisrahmannst/karsajobs:latest .

# Login Github Package
# menajalankan "export PASSWORD_DOCKER_HUB =YOUR_TOKEN"
echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u harisrahmannst --password-stdin

# melakukan push image ke github package
docker push ghcr.io/harisrahmannst/karsajobs:latest