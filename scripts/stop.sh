#!/bin/bash
source scripts/vars

docker ps -q -f name=$CNAME
docker stop $CNAME
docker container rm $CNAME 
