FROM confluentinc/cp-server-connect-operator:6.1.0.0
USER root
RUN confluent-hub install  --no-prompt confluentinc/kafka-connect-ibmmq:11.0.7
COPY *.jar /usr/share/confluent-hub-components/confluentinc-kafka-connect-ibmmq/lib
USER 1001
