#!/bin/bash

CMD="docker run \
       --rm \
       --name scalac \
       --net "host" \
       --user 1000:1000 \
       --volume $HOME:/home/developer \
       --volume $(pwd):/pwd \
       --entrypoint /opt/scala/bin/scalac \
       kurron/docker-maven:latest"

#echo $CMD
eval $CMD $*
