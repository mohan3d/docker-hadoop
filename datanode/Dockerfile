ARG TAG=latest
FROM bde2020/hadoop-base:${TAG}

MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

# HEALTHCHECK CMD curl -f http://localhost:9864/ || exit 1
HEALTHCHECK CMD curl -f http://localhost:50075/ || exit 1

ENV HDFS_CONF_dfs_datanode_data_dir=file:///hadoop/dfs/data
RUN mkdir -p /hadoop/dfs/data
VOLUME /hadoop/dfs/data

ADD run.sh /run.sh
RUN chmod a+x /run.sh

# EXPOSE 9864
EXPOSE 50075

CMD ["/run.sh"]
