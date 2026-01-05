#!/bin/sh

MEMORY=${MEMORY:-2G}
PORT=${PORT:-25565}

java -Xms$MEMORY -Xmx$MEMORY \
  -jar paper.jar \
  --nogui \
  --port $PORT
