#!/bin/bash

################################################################################
# Script name: docker_run.sh
# Description: Runs a samba server in a Docker container
# Args: None
# Author: Brent Maranzno
# email: brent_maranzano@gmail.com

# Usage:
# create Docker volume: samba
################################################################################
 
#docker run --detach=true --name samba \
docker run -it --name samba \
    --publish 139:139/tcp --publish 445:445/tcp \
    --publish 137:137/udp --publish 138:138/udp \
    --mount 'type=volume,source=samba,target=/mount' \
    samba
