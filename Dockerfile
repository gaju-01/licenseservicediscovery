FROM openjdk:slim-17 as build
LABEL maintainer="GAJANAN C HEGDE"
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
RUN mkdir target/dependency && (cd target/dependency; jar -xf app.jar)

FROM openjdk:slim-17
VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY --from=build ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY --from=build ${DEPENDENCY}/META-INF /app/META-INF
COPY --from=build ${DEPENDENCY}/BOOT-INF/classes /app