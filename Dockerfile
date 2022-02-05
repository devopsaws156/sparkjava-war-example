FROM tomcat:7
MAINTAINER PRASUNA
RUN apt-get -y update 
RUN useradd vindhya
USER vindhya
WORKDIR /usr/local/tomcat
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
