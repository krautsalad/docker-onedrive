#!/bin/bash

docker build --no-cache --progress=plain  -t registry.krautsalad.com/docker-onedrive -f Dockerfile .
