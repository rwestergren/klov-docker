FROM openjdk:8-jdk-alpine as java

ADD https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 /usr/local/bin/confd
ADD start.sh /start.sh
RUN chmod +x /usr/local/bin/confd /start.sh
ADD confd /etc/confd

ENV KLOV_SRC klov-0.1.1.jar
ENV SRC_FOLDER /sde

COPY $KLOV_SRC $SRC_FOLDER/

RUN chmod -R 755 $SRC_FOLDER
WORKDIR $SRC_FOLDER/

EXPOSE 80

CMD ["sh", "-c", "/start.sh"]
