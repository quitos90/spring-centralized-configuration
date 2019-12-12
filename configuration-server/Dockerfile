FROM openjdk:14-alpine

ENV JAVA_OPTS=""

ENV APP_DIR /opt/configuration-server/app

RUN apk -q update && apk -q add bash && apk -q add --update curl \
    # Add user configuration-server
    && adduser -D configuration-server \
    # Create folders
    && mkdir -p $APP_DIR  && chown -R configuration-server:configuration-server $APP_DIR

WORKDIR $APP_DIR

COPY target/configuration-server-*.jar configuration-server.jar

WORKDIR $APP_DIR

USER configuration-server

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar configuration-server.jar;" ]
