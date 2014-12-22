#!/bin/bash

WORKDIR="/tmp/app-prod-release"
TIMESTAMP=$(date -u +"%Y-%m-%d-%H-%M-%SZ")

mkdir -p $WORKDIR
cp /destination/app-prod-release-dockerfile $WORKDIR/Dockerfile
cd $WORKDIR

docker build -t app-prod-release:$TIMESTAMP .
