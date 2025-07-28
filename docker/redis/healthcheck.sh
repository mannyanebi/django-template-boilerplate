#!/usr/bin/env bash

set -o errexit
set -o nounset

redis-cli -h redis -p 6379 PING | grep "PONG" > /dev/null
