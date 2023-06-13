FROM openjdk:8

RUN mkdir -p /app
WORKDIR /app
COPY . .

RUN ./mvnw package
ENTRYPOINT ["java","-jar","./target/docker-example-1.1.3.jar"]
