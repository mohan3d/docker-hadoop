#!/bin/bash

$HADOOP_HOME/bin/yarn --config $HADOOP_CONF_DIR nodemanager
# $HADOOP_HOME/sbin/yarn-daemons.sh --config $HADOOP_CONF_DIR start nodemanager