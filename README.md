## bundle install

### build

`gem build logstash-output-kafka.gemspec`

### install

`logstash-plugin remove logstash-output-kafka`

`logstash-plugin install --no-verify logstash-output-kafka-[version].gem`

logstash-output-kafka-8.1.0.gem

### use

https://hub.docker.com/repository/docker/cclient/logstash

```

output{
    kafka {
        acks => "all"
        codec => "json"
        topic_id => "test_topic"
        bootstrap_servers =>"a:9092,b:9092,c:9092"
        batch_size => 2048
        max_request_size =>512000
        max_in_flight_requests_per_connection => 1
        enable_idempotence => "true"
    }
}
```
