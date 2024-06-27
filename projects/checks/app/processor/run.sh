#!/usr/bin/env sh
mvn  clean install -DskipTests -X -U
cp target/processor-0.0.1-SNAPSHOT.jar processor-0.0.1-SNAPSHOT.jar
docker exec -it processor-jobmanager-1 rm /home/processor-0.0.1-SNAPSHOT.jar
docker cp processor-0.0.1-SNAPSHOT.jar processor-jobmanager-1:/home
rm processor-0.0.1-SNAPSHOT.jar
docker exec -it processor-jobmanager-1 flink run -c com.bees.streaming.processor.processor.processorApplication --detached /home/processor-0.0.1-SNAPSHOT.jar