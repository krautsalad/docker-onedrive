#!/bin/sh
set -ex
docker build --no-cache --progress=plain -t registry.krautsalad.com/docker-onedrive -f Dockerfile .
