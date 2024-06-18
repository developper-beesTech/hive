#!/usr/bin/env sh
mvn  clean install -DskipTests -X -U
cp target/init-0.0.1-SNAPSHOT.jar init-0.0.1-SNAPSHOT.jar
docker exec -it init-jobmanager-1 rm /home/init-0.0.1-SNAPSHOT.jar
docker cp init-0.0.1-SNAPSHOT.jar init-jobmanager-1:/home
rm init-0.0.1-SNAPSHOT.jar
docker exec -it init-jobmanager-1 flink run -c com.bees.streaming.processor.init.InitApplication --detached /home/init-0.0.1-SNAPSHOT.jar