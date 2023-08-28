#!/bin/bash

ROOT=/ahc/work4/seitaro-s/VisualChatGPT
CONTAINER_HOME=/workspace/myspace

if [ -z $CUDA_VISIBLE_DEVICES ]; then
    CUDA_VISIBLE_DEVICES='all'
fi

if [ $# -lt 1 ]; then 
    PROJECT_NAME="visual-chatgpt"
    DATE=`date "+%Y-%m-%d-%H-%M-%S"`
    CONTAINER_NAME="${PROJECT_NAME}_${DATE}"
else
    CONTAINER_NAME=$1
fi

echo "Launching a container named ${CONTAINER_NAME}"
docker run -it --rm \
    --gpus "device=$CUDA_VISIBLE_DEVICES" \
    --name  ${CONTAINER_NAME} \
    --mount src=${ROOT},dst=${CONTAINER_HOME}/project,type=bind \
    --shm-size=2G \
    --env WORKDIR=${CONTAINER_HOME}  \
    -p 8890:8890 \
    visual-chatgpt:latest \
    /bin/bash 

