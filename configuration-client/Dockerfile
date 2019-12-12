FROM openjdk:14-alpine

ENV JAVA_OPTS=""

ENV APP_DIR /opt/configuration-client/app

RUN apk -q update && apk -q add bash && apk -q add --update curl && apk add --no-cache coreutils\
    # Add user configuration-client
    && adduser -D configuration-client \
    # Create folders
    && mkdir -p $APP_DIR  && chown -R configuration-client:configuration-client $APP_DIR

WORKDIR $APP_DIR

COPY target/configuration-client-*.jar configuration-client.jar
COPY wait-for-it.sh wait-for-it.sh
COPY start.sh start.sh

RUN chmod +x wait-for-it.sh
RUN chmod +x start.sh

WORKDIR $APP_DIR

USER configuration-client
ENTRYPOINT [ "sh", "-c", "./start.sh" ]
