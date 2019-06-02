FROM alpine:3.9

COPY . /

RUN apk add --no-cache --update --upgrade openssh && \
    adduser -D socksproxy

ENTRYPOINT sh entrypoint.sh
