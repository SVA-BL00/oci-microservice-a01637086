FROM openjdk:17-jdk-slim
WORKDIR /oci-artifact
COPY /target/*.jar oci-artifact.jar
COPY /src/main/resources/Wallet_javadev /oci-artifact/Wallet_javadev
ENV TNS_ADMIN=/oci-artifact/Wallet_javadev
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-artifact.jar" ]