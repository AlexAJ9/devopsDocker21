#!/bin/bash

PROJECT=$1
TAG=$2
USERNAME=$3
REPOSITORY=$4


echo "Starting. Please wait.. :)."
echo "Project to clone: ${PROJECT}!"
git clone $PROJECT project 
cd project

echo "Logging into Dockerhub!"
docker login 
echo "Building image with tag ${USERNAME}/${REPOSITORY}:${TAG}!"
docker build . -t ${USERNAME}/${REPOSITORY}:$TAG
echo "Pushing to dockerhub!"
docker push ${USERNAME}/${REPOSITORY}:$TAG


