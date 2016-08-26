# Solr

## About
Solr is the popular, blazing-fast, open source enterprise search platform built
on Apache Lucene™.

Solr is highly reliable, scalable and fault tolerant, providing distributed
indexing, replication and load-balanced querying, automated failover and
recovery, centralized configuration and more. Solr powers the search and
navigation features of many of the world's largest internet sites.

## Configuring

Solr configuration files, logs and data can be found in

```
/var/snap/apache-solr/common/
```

## Testing

```
JRE_HOME="/snap/apache-solr/current/usr/lib/jvm/java-8-openjdk-amd64/jre"
SOLR_BIN="/snap/apache-solr/current/bin"
TEST_FILE="/snap/apache-solr/current/example/exampledocs/books.csv"
CORE_NAME="test"

sudo SOLR_JAVA_HOME="${JRE_HOME}" ${SOLR_BIN}/solr create -c ${CORE_NAME}
sudo SOLR_JAVA_HOME="${JRE_HOME}" ${SOLR_BIN}/post -c ${CORE_NAME} ${TEST_FILE}
curl "http://$(hostname -I):8983/solr/${CORE_NAME}/select?q=Black"
```
