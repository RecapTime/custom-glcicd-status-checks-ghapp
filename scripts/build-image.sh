#!/bin/bash
# shellcheck disable=SC2034

# Generate metadata for image labels and tags
GHCR_IMAGE_TAG=${GHCR_IMAGE_TAG:-"ghcr.io/recaptime/gitlab-cicd-custom-status-checks"}
GLCR_IMAGE_TAG=${GLCR_IMAGE_TAG:-"registry.gitlab.com/RecapTime/gitlab-cicd-custom-status-checks/app"}
GIT_COMMIT_ID=
BUILD_DATE=$(TZ=UTC date -u +'%Y-%m-%dT%H:%M:%SZ')

# Build args stuff
BASE_IMAGE_CUSTOM=${DEPENDENCY_PROXY}/node:14

docker build \
  --label org.opencontainers.image.todo= \
  --tag "$GHCR_IMAGE_TAG" --tag "$GLCR_IMAGE_TAG" \
  .