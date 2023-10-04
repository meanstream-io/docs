#!/bin/bash
set -euxo pipefail

NAME="meanstream-docs"
TAG=$(git rev-parse HEAD)

IMAGE_NAME="europe-docker.pkg.dev/meanstream/meanstream/$NAME:$TAG"

pack build $IMAGE_NAME \
  --timestamps \
  --builder paketobuildpacks/builder:base \
  --buildpack paketo-buildpacks/nginx \
  -e BP_WEB_SERVER_ROOT=/workspace \
  --path . \
  --publish \
  --pull-policy if-not-present \
  --verbose
