#! /usr/bin/env bash

export CGO_ENABLED=0
export GOOS=linux

build() {
    go build -a -tags netgo -ldflags '-w -extldflags "-static"' -o "lfs-s3-$GOOS-$GOARCH"
}

GOARCH=arm64 build
GOARCH=amd64 build
