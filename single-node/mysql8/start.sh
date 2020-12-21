#!/bin/bash

docker container stop mysql;
docker container rm mysql;

docker run -d \
    -p 3306:3306 \
    -e MYSQL_ROOT_PASSWORD=123456 \
    -e LANG=C.UTF-8 \
    --mount type=bind,source=${PWD}/config/binlog.cnf,target=/etc/mysql/conf.d/binlog.cnf \
    --mount type=bind,source=${PWD}/config/timezone.cnf,target=/etc/mysql/conf.d/timezone.cnf \
    -v ${PWD}/script:/docker-entrypoint-initdb.d \
    --name mysql \
    mysql:8

        