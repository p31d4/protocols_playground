#!/bin/zsh

# docker build --tag <name:tag> - < Dockerfile
docker build --file Dockerfile --tag icmp_playground:0.1 .
