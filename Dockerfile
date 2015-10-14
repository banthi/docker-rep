FROM consol/tomcat-8.0
MAINTAINER Thirumal Bandi "banth02@ca.com"
RUN mkdir nim
#RUN wget http://isl-dsdc.ca.com/artifactory/cade-isl-ivy-proxy/ca/normalized-service-management/bin-zips/canim-sm-3.1.0.70.zip -P /nim
ADD  http://isl-dsdc.ca.com/artifactory/cade-isl-ivy-proxy/ca/normalized-service-management/bin-zips/canim-sm-3.1.0.70.zip canim-sm-3.1.0.70.zip
RUN cd nim
RUN unzip /nim/canim-sm-3.1.0.58.zip -d /nim
RUN cp /nim/ca-nim-sm.war /opt/apache-tomcat-8.0.23/webapps/
RUN rm -R /nim
CMD /opt/apache-tomcat-8.0.23/bin/catalina.sh run
EXPOSE 8080
