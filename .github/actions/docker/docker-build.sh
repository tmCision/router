#!/bin/bash -x

set -e

SERVICE_NAME=${SERVICE_NAME?:SERVICE_NAME apollo-router}
VERSION=${VERSION?:VERSION http2-temp-fix}

IMAGE_NAME="$(echo "${SERVICE_NAME}:${VERSION}" | tr '[:upper:]' '[:lower:]')"

docker build -f ${DOCKER_RESOURCES}/Dockerfile -t "$IMAGE_NAME" \