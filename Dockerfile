FROM openjdk
EXPOSE 9090
RUN mkdir local
WORKDIR /local
ADD /var/lib/jenkins/workspace/java/target/log-1.0.0-SNAPSHOT.jar /local
CMD [ "java","-jar","log-1.0.0-SNAPSHOT.jar" ]
