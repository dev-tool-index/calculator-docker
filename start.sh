#! /bin/bash

touch log.txt
java -jar -javaagent:/jacoco/lib/jacocoagent.jar=destfile=/jacoco-it.exec calculator-service.jar >> log.txt &
tail -f log.txt
