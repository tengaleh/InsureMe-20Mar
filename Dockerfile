# Use official Java image
FROM eclipse-temurin:11-jdk-jammy
# defining variables in a Dockerfile
ARG JAR_FILE=target/*.jar
# Copy Jar file into directory
COPY ${JAR_FILE} app.jar
#defines the executable that always runs when a container starts
ENTRYPOINT ["java","-jar","/app.jar"]
