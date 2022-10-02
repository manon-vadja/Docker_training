FROM alpine/git as clone
WORKDIR /app
RUN git clone https://github.com/g0t4/jgsu-spring-petclinic.git

FROM maven:3.6.3-jdk-11-openj9 as build
WORKDIR /app
COPY from clone /app/jgsu-spring-petclinic /app
RUN ./mvnw package
java -jar target/*.jar
