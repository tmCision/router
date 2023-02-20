#!/bin/bash -x

set -e

SERVICE_NAME=${SERVICE_NAME?:SERVICE_NAME apollo-router}
VERSION=${VERSION?:VERSION http2-temp-fix}

#IMAGE_NAME="$(echo "${SERVICE_NAME}:${VERSION}" | tr '[:upper:]' '[:lower:]')"
IMAGE_NAME="apollo-router:http2-disabled"
docker build -f dockerfiles/Dockerfile.router -t "$IMAGE_NAME" \
.
