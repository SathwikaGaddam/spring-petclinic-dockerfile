FROM eclipse-temurin:17
LABEL projct="spring petclinic" author="sharath"
ARG username= spetcinic
WORKDIR /apps
RUN adduser -D test -h /apps -s /bin/bash
ADD --chown=spetcinic:spetcinic https://referenceappslt.s3.ap-south-1.amazonaws.com/spring-petclinic-3.3.0-SNAPSHOT.jar /apps/spring-petclinic-3.4.0-SNAPSHOT.jar
EXPOSE 8080
CMD [ "java", "-jar", "spring-petclinic-3.4.0-SNAPSHOT.jar" ]
