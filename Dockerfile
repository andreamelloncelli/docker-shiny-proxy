FROM openjdk:8-jre

RUN mkdir -p /opt/shinyproxy/ && \
  mkdir -p /opt/shinyproxy/config/ && \
  wget https://www.shinyproxy.io/downloads/shinyproxy-2.0.5.jar -O /opt/shinyproxy/shinyproxy.jar
RUN ln -s /opt/shinyproxy/config/application.yml /opt/shinyproxy/application.yml
COPY application.yml /opt/shinyproxy/config/application.yml

WORKDIR /opt/shinyproxy/
CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
