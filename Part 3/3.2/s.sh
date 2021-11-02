#!/bin/sh

echo "Enter project repository!"
read  PROJECT




echo "Starting. Please wait.. :)."
echo "Project to clone: ${PROJECT}!"
git clone $PROJECT project 
cd project

echo "Logging into Dockerhub!"
docker login
echo "Enter docker username,repository and image tag."
read -p "Username: " USERNAME
read -p "Repository: " REPOSITORY
read -p "Tag: " TAG
echo "Building image with tag ${USERNAME}/${REPOSITORY}:${TAG}!"
docker build . -t ${USERNAME}/${REPOSITORY}:$TAG
echo "Pushing to dockerhub!"
docker push ${USERNAME}/${REPOSITORY}:$TAG


