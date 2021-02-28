#FROM logstash:6.8.13
FROM docker.elastic.co/logstash/logstash-oss:6.3.0
COPY logstash-output-kafka-7.0.10.gem /usr/share/logstash/
# RUN logstash-plugin remove logstash-output-kafka && rm -rf /usr/share/logstash/vendor/bundle/jruby/2.3.0/gems/logstash-output-kafka*
#RUN logstash-plugin remove logstash-output-kafka
# RUN export http_proxy=http://192.168.215.46:1087;export https_proxy=http://192.168.215.46:1087;
RUN logstash-plugin install --no-verify /usr/share/logstash/logstash-output-kafka-7.0.10.gem
RUN mv /usr/share/logstash/vendor/bundle/jruby/2.3.0/gems/logstash-output-kafka-7.0.10/vendor /usr/share/logstash/vendor/local_gems/52285100/logstash-output-kafka-7.0.10/vendor
#RUN rm -rf /usr/share/logstash/logstash-output-kafka-7.0.10.gem
# RUN unset http_proxy https_proxyij
# https://rubygems.org/gems/logstash-output-kafka/versions