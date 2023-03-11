#!/bin/sh

# membuat sebuah Docker image menggunakan Dockerfile yang tadi dibuat dengan nama sampleapp-2 dan tag sesuai Build ID pada Jenkins
docker build -t sampleapp-2:${BUILD_ID} .

# melihat daftar image di lokal
docker images

# mengubah nama image agar sesuai dengan format Docker Hub
docker tag sampleapp-2:${BUILD_ID} registry.hub.docker.com/filahaa/sampleapp-2:${BUILD_ID}

# login ke Docker Hub
echo ${DOCKERHUB_CREDENTIALS_PSW} | docker login -u ${DOCKERHUB_CREDENTIALS_USR} --password-stdin

# mengunggah image ke Docker HUB
docker push registry.hub.docker.com/filahaa/sampleapp-2:${BUILD_ID}