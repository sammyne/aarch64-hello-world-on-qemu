#!/bin/bash

repo_tag=sammyne/arm64-workspaces:qemu-7.2.0-aarch64

docker build -t $repo_tag .
