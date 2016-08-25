#!/bin/bash

JRE_HOME="/snap/apache-solr/current/usr/lib/jvm/java-8-openjdk-amd64/jre"
SOLR_BIN="/snap/apache-solr/current/bin"
TEST_FILE="$(pwd)/books.csv"
CORE_NAME="bill2"

sudo SOLR_JAVA_HOME="${JRE_HOME}" ${SOLR_BIN}/solr create -c ${CORE_NAME}
sudo SOLR_JAVA_HOME="${JRE_HOME}" ${SOLR_BIN}/post -c ${CORE_NAME} ${TEST_FILE}
curl "http://$(hostname -I):8983/solr/${CORE_NAME}/select?q=Black"
