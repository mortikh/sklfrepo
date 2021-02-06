#!/bin/bash
source scripts/vars

docker build -t $IMGNAME . 
docker run --name $CNAME -d -p 8080:8080 $IMGNAME
