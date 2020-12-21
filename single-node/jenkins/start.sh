#!/bin/bash

docker run --restart=always \
    -d \
    -v ${PWD}/jenkins_home:/var/jenkins_home \
    -p 80:8080 \
    -p 50000:50000 \
    --name jenkins \
    jenkinsci/blueocean