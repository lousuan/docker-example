FROM jenkinsci/blueocean

COPY plugins.conf /tmp/plugins.conf

USER root

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add tzdata nodejs npm maven \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && apk del tzdata

USER jenkins
RUN /usr/local/bin/install-plugins.sh < /tmp/plugins.conf 