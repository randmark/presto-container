#!/usr/bin/env bash

#docker rm starburst-demo-latest

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo $DIR

docker run \
-v $DIR/etc/catalog:/usr/lib/starburst/etc/catalog \
-v $DIR/log:/var/log/starburst \
-v $DIR/etc/config.properties:/usr/lib/starburst/etc/starburst/config.properties \
-v $DIR/etc/jvm.config:/usr/lib/starburst/etc/jvm.config \
-v $DIR/etc/log.properties:/usr/lib/starburst/etc/log.properties \
-v $DIR/etc/node.properties:/usr/lib/starburst/etc/node.properties \
-d --rm \
-p 8080:8080 --name starburst-container-demo starburstdata/starburst-enterprise:358-e
