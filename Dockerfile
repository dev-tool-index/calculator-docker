FROM java:8-jdk

ENV calculator_service_version 2.3

RUN wget https://jitpack.io/com/github/dev-tool-index/calculator-service/${calculator_service_version}/calculator-service-${calculator_service_version}.jar -O calculator-service.jar

CMD [ "java", "-jar", "calculator-service.jar"]
