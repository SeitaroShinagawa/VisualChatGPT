#!/bin/bash

# docker image name
DOCKER_IMAGE_NAME="visual-chatgpt"

docker build \
        -t ${DOCKER_IMAGE_NAME} . \
        -f Dockerfile.myown \
        --no-cache=true
