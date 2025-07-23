[root@devops-elk-ls-01 ~]# git clone https://github.com/kevin197011/logstash-output-kafka.git
Cloning into 'logstash-output-kafka'...
remote: Enumerating objects: 997, done.
remote: Counting objects: 100% (72/72), done.
remote: Compressing objects: 100% (38/38), done.
remote: Total 997 (delta 35), reused 58 (delta 27), pack-reused 925 (from 1)
Receiving objects: 100% (997/997), 281.76 KiB | 2.31 MiB/s, done.
Resolving deltas: 100% (492/492), done.


[root@devops-elk-ls-01 ~]# cd logstash-output-kafka/


[root@devops-elk-ls-01 logstash-output-kafka]# /usr/share/logstash/bin/logstash-plugin reinstall --no-verify logstash-output-kafka-7.3.2.gem 
Using bundled JDK: /usr/share/logstash/jdk
ERROR: Installation aborted, plugin 'logstash-output-kafka' is already provided by 'logstash-integration-kafka'