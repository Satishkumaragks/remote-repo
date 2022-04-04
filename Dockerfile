FROM openjdk
EXPOSE 9090
ADD target/*.jar .
CMD [ "java","-jar" ]
