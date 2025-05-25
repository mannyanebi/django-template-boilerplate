#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

: "${REDIS_HOST:=redis}"
: "${REDIS_PORT:=6379}"

# Wait for Redis to be available
wait-for-it \
  --host="$REDIS_HOST" \
  --port="$REDIS_PORT" \
  --timeout=30 \
  --strict

echo "Redis ${REDIS_HOST}:${REDIS_PORT} is up"
