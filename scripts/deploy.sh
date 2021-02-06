#!/bin/bash
source scripts/vars

docker ps -q -f name=$CNAME
docker stop $CNAME && docker container rm $CNAME 
docker build -t $IMGNAME . && docker run --name $CNAME -d -p 8080:8080 $IMGNAME
