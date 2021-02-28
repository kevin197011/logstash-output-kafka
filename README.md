## bundle install

### build

`gem build logstash-output-kafka.gemspec`

### install

`logstash-plugin remove logstash-output-kafka`

`logstash-plugin install --no-verify logstash-output-kafka-[version].gem`

logstash-output-kafka-8.1.0.gem