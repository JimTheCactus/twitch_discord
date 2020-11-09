#!/bin/bash
docker build \
    --build-arg UID=$(id -u) \
    --build-arg GID=$(id -g) \
    -t aws_dev_env \
    dev-env
COMMAND=${1:-sleep infinity}
shift
docker run -d -it \
    -v ${HOME}:/home/developer \
    --name aws_dev_env \
    --hostname dev_env \
    --user "$(id -u):$(id -g)" \
    aws_dev_env \
    ${COMMAND} "$@"
