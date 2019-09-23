#!/usr/bin/env bash

set -ev
SCRIPT_DIR=$(dirname "$0")

CODE_DIR=$(cd $SCRIPT_DIR/..; pwd)
echo $CODE_DIR

if [[ -z "$TAG" ]] ; then
    TAG=latest
fi

docker build --network host  -t localhost:5000/front-end:$TAG -f Dockerfile .

docker push localhost:5000/front-end:$TAG