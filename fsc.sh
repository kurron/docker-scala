#!/bin/bash

CMD="docker run \
       --rm \
       --name fsc \
       --net "host" \
       --user 1000:1000 \
       --volume $HOME:/home/developer \
       --volume $(pwd):/pwd \
       --entrypoint /opt/scala/bin/fsc \
       kurron/docker-scala:latest"

#echo $CMD
eval $CMD $*
