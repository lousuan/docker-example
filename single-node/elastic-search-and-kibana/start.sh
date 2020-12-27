#!/bin/bash

docker run --restart=always \
    -e ES_JAVA_OPTS="-Xms3072m -Xmx3072m" \
    -d  \
    -network=host \
    -v ./config/es.yml:/usr/share/elasticsearch/config/elasticsearch.yml \
    -v ./data:/usr/share/elasticsearch/data \
    --name es \
    elasticsearch:7.4.2


# 设置时区
docker exec -it mysql /bin/bash -c 'ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime'
docker restart mysql 
docker exec mysql date -R 