FROM logstash:6.4.3
RUN sed -i 's|^source.*|source "https://gems.ruby-china.com"|g' /usr/share/logstash/Gemfile \
    && logstash-plugin install logstash-output-logservice \
    && logstash-plugin install logstash-input-file \
    && echo "检查安装情况：" \
    && logstash-plugin list | grep logstash-output-logservice \
    && logstash-plugin list | grep logstash-input-file
