#!/bin/sh

if [ -z "$1" ]
then
  echo "no build version given"
  echo "\nUsage"
  echo "\t./build.sh VERSION"
  exit
fi

version=$1

docker build -t silasb/coredns:$version --build-arg VERSION=$version .
