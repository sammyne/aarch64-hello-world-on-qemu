#!/bin/bash

repo_tag=sammyne/arm64-workspaces-v2:qemu-7.2.0-aarch64

docker build -t $repo_tag .
