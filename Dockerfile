FROM docker.repo1.uhc.com/adoptopenjdk/openjdk11:jdk-11.28
ARG JAR_FILE=target/samplemaven-1.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar 
ENTRYPOINT ["java","-cp","app.jar","com.optum.com.Sample"]


