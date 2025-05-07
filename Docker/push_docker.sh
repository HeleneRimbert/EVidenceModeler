#!/bin/bash

VERSION=`cat VERSION.txt`

docker push helrim/evidencemodeler:${VERSION} 
docker push helrim/evidencemodeler:latest 
