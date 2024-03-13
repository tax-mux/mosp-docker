FROM ubuntu:latest

RUN sed -i.bak -r 's!http://(jp\.)?archive\.ubuntu\.com/ubuntu/?!http://ftp.udx.icscoe.jp/Linux/ubuntu/!g' /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y 
RUN apt-get install -y default-jdk wget
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /tmp
ARG TOMCAT_VERSION=9.0.86
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz
RUN tar xvf apache-tomcat-${TOMCAT_VERSION}.tar.gz
RUN mv apache-tomcat-${TOMCAT_VERSION} /opt/tomcat9

ENV CATALINA_HOME /opt/tomcat9
ENV PATH $CATALINA_HOME/bin:$PATH

EXPOSE 8080

ENV CATALINA_WEBAPPS /opt/tomcat9/webapps

RUN cd $CATALINA_WEBAPPS && wget https://github.com/es-mind/MosP/releases/download/v4.6.7/time4.war

CMD ["catalina.sh", "run"]
