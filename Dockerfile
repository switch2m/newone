ARG ROOTIMAGE=docker.elastic.co/elasticsearch/elasticsearch:6.8.22
FROM ${ROOTIMAGE}
RUN mkdir -p /backups/elasticsearch-snapshots
COPY ./elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
RUN chown -R elasticsearch:elasticsearch /backups
RUN chmod -R 777 /backups
