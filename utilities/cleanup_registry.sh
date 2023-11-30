#!/bin/bash
docker exec docker-registry_registry_1 bin/registry garbage-collect --delete-untagged=true /etc/docker/registry/config.yml