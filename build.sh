#!/bin/bash
VERSION=1.16.126
docker build --build-arg CLI_VERSION=${VERSION} -t alamut/awscli:${VERSION} .
docker tag alamut/awscli:${VERSION} alamut/awscli:latest
docker push alamut/awscli:${VERSION}
docker push alamut/awscli:latest
