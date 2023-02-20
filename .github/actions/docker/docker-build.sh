#!/bin/bash -x

set -e


docker build -f ${DOCKER_RESOURCES}/Dockerfile.router -t "http2-temp-fix" \