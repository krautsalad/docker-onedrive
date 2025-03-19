#!/bin/sh
set -ex
docker build --no-cache --progress=plain -t krautsalad/onedrive:latest -f Dockerfile .
