#/bin/bash

# Set up XQuartz https://gist.github.com/cschiewek/246a244ba23da8b9f0e7b11a68bf3285
xhost + ${hostname}
export HOSTNAME=`hostname`

docker run -ti --rm \
       -e DISPLAY=${HOSTNAME}:0 \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       firefox

