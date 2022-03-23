FROM openjdk
EXPOSE 9090
RUN mkdir local
WORKDIR /local
COPY target/log-1.0.0-SNAPSHOT.jar /local
CMD [ "java","-jar","log-1.0.0-SNAPSHOT.jar" ]
