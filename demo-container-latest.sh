#!/usr/bin/env bash

docker rm presto-demo-latest

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo $DIR

# docker run \
# -v ~/containers/presto/etc/catalog:/usr/lib/presto/etc/catalog \
# -v ~/containers/presto/log:/var/log/presto \
# -v ~/containers/presto/etc/config.properties:/usr/lib/presto/etc/presto/config.properties \
# -v ~/containers/presto/etc/jvm.config:/usr/lib/presto/etc/jvm.config \
# -v ~/containers/presto/etc/log.properties:/usr/lib/presto/etc/log.properties \
# -v ~/containers/presto/etc/node.properties:/usr/lib/presto/etc/node.properties \
# -p 8080:8080 --name presto-demo-latest starburstdata/presto


docker run \
-v $DIR/etc/catalog:/usr/lib/presto/etc/catalog \
-v $DIR/log:/var/log/presto \
-v $DIR/etc/config.properties:/usr/lib/presto/etc/presto/config.properties \
-v $DIR/etc/jvm.config:/usr/lib/presto/etc/jvm.config \
-v $DIR/etc/log.properties:/usr/lib/presto/etc/log.properties \
-v $DIR/etc/node.properties:/usr/lib/presto/etc/node.properties \
-p 8080:8080 --name presto-demo-latest starburstdata/presto



docker run -p 8080:8080 --name presto-demo-latest starburstdata/presto