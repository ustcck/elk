FROM docker.elastic.co/kibana/kibana-oss:7.9.2

ENV ELASTICSEARCH_URL=http://elasticsearch:9200

COPY kibana.yml /usr/share/kibana/config/kibana.yml
RUN ./bin/kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.31/logtrail-7.9.2-0.1.31.zip
COPY logtrail.json /usr/share/kibana/plugins/logtrail/logtrail.json
