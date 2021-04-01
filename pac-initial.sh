#!/bin/bash
docker run --rm -it \
--name=plex-auto-collections  \
-e PGID=1001 -e PUID=1000  \
--label com.github.cloudbox.cloudbox_managed=true \
--network=cloudbox  \
-v /opt/plex-auto-collections:/config \
mza921/plex-auto-collections -c $1
