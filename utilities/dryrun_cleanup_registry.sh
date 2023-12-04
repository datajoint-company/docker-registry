#!/bin/bash
docker exec docker-registry_registry_1 bin/registry garbage-collect --delete-untagged --dry-run /etc/docker/registry/config.yml