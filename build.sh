#!/bin/bash

# Clean and create appconfig archive
rm -rf ./kubedirector/appconfig.tgz
cd ./kubedirector && tar czf appconfig.tgz appconfig/ && cd -
mv ./kubedirector/appconfig.tgz .

# Build and push Docker image
docker build -t dzinsouhpe/python3kd:latest .
docker push dzinsouhpe/python3kd:latest

# Delete temporary archive
rm -rf ./appconfig.tgz