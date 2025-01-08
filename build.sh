#!/bin/bash
OS=`uname -s | tr '[:upper:]' '[:lower:]'`
ARCH=`arch`

if [ $OS == "darwin" ]
then
    EXTENSION="dylib"
else
    EXTENSION="so"
fi

if [ $OS == "darwin" ]
then
    CGO_ENABLED=1 GOARCH=arm64 go build -buildmode=c-shared -o libgoast-arm64.${EXTENSION} lib.go
    CGO_ENABLED=1 GOARCH=amd64 go build -buildmode=c-shared -o libgoast-amd64.${EXTENSION} lib.go
else
    CGO_ENABLED=1 GOARCH=$ARCH go build -buildmode=c-shared -o libgoast-amd64.${EXTENSION} lib.go
fi
