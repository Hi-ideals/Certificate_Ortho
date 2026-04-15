FROM tomcat:9.0.82-jdk8-temurin
WORKDIR /usr/local/tomcat/webapps
COPY ./Brims.war ROOT.war
RUN wget -O mysql-connector-java-5.1.29.tar.gz https://downloads.mysql.com/archives/get/p/3/file/mysql-connector-java-5.1.29.tar.gz && \
    tar -xzvf mysql-connector-java-5.1.29.tar.gz && \
    mv mysql-connector-java-5.1.29/mysql-connector-java-5.1.29-bin.jar /usr/local/tomcat/lib/ && \
    rm -rf mysql-connector-java-5.1.29 mysql-connector-java-5.1.29.tar.gz
RUN apt-get update && \
    apt-get install -y default-mysql-client
EXPOSE 8080