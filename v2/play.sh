#!/bin/bash

repo_tag=sammyne/arm64-workspaces-v2:qemu-7.2.0-aarch64

docker run -it --rm               \
  -v $PWD/hello-world:/workspaces \
  -w /workspaces                  \
  --entrypoint ""                 \
  --name arm64-workspaces-v2      \
  $repo_tag bash
