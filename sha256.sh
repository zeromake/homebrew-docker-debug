#!/bin/bash

REPOSITORY=`grep "REPOSITORY_URL=" docker-debug.rb | sed -E "s/.*'(.+)'$/\1/"`
VERSION=`grep "GIT_VERSION=" docker-debug.rb | sed -E "s/.*'(.+)'$/\1/"`

curl -L -O $REPOSITORY/releases/download/$VERSION/docker-debug-darwin-amd64 > /dev/null
openssl dgst -sha256 docker-debug-darwin-amd64
rm -rf docker-debug-darwin-amd64
