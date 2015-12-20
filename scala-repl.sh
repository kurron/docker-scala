#!/bin/bash

CMD="docker run \
       --rm \
       --interactive \
       --tty \
       --name scala \
       --net "host" \
       --user 1000:1000 \
       --volume $HOME:/home/developer \
       --volume $(pwd):/pwd \
       kurron/docker-scala:latest"

#echo $CMD
eval $CMD $*
