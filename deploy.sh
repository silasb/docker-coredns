#!/bin/bash

version=${1:-006}
name=silasb/coredns

./build.sh $version

docker tag $name:$version $name:latest

docker push $name:latest
docker push $name:$version
