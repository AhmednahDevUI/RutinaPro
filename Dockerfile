FROM tomcat:10.1-jdk17-temurin

RUN rm -rf /usr/local/tomcat/webapps/*
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

CMD ["sh", "-c", "sed -i '0,/Connector port=\"8080\"/s/Connector port=\"8080\"/Connector port=\"'\"$PORT\"'\"/' /usr/local/tomcat/conf/server.xml && catalina.sh run"]
