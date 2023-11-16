# On construit le jar avec une image openjdk
FROM eclipse-temurin:17-jdk
USER root
COPY ./covid-api /covid-api
WORKDIR /covid-api
RUN chmod +x gradlew &&\
    ./gradlew build -x test
    

# On lance le jar avec openjre
FROM eclipse-temurin:17-jre
COPY --from=0 /covid-api/build/libs/covid-api-0.0.1-SNAPSHOT.jar /covid-api.jar
ENTRYPOINT ["java", "-jar", "/covid-api.jar"]
EXPOSE 8080