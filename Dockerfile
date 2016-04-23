FROM java:8-jdk

ENV calculator_service_version 2.3

RUN wget https://jitpack.io/com/github/dev-tool-index/calculator-service/${calculator_service_version}/calculator-service-${calculator_service_version}.jar -O calculator-service.jar

ENV jacoco_version 0.7.6.201602180812

RUN mkdir jacoco && cd jacoco && wget https://repo1.maven.org/maven2/org/jacoco/jacoco/${jacoco_version}/jacoco-${jacoco_version}.zip -O jacoco.jar && unzip jacoco.jar && cd ..

COPY start.sh /start.sh 

RUN chmod +x /start.sh

CMD [ "/start.sh" ]
