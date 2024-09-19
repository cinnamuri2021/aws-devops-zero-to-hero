#!/bin/bash
set -e

# Stop the running container (if any)
containerid=$(docker ps --format "{{.ID}}" | head -n 1)
echo "container id is ${containerid}"
docker rm -f $containerid
