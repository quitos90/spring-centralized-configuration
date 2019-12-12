#!/usr/bin/env bash

./wait-for-it.sh -h configuration-server -p 8888

echo "Launching configuration-client.jar ..."
java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar configuration-client.jar;
