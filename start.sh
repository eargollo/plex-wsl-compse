#!/bin/bash

# Check if docker can access the external mount
output=$(docker run -v /mnt/media:/media ubuntu ls -R /media/Documentaries 2>/dev/null)

RESULT=$?
if [ $RESULT -eq 0 ]; then
  if [ -z `docker ps -q --no-trunc | grep $(docker-compose ps -q plex)` ]; then
    echo "Udating plex..."
    sudo docker-compose pull
    echo "Staring plex server..."
    sudo docker-compose up -d
  else
    echo "Plex is already running"
  fi
else
  #sudo bash ./mount.sh
  echo "Restart docker deamon before running plex"
fi

