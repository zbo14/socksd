FROM alpine:latest

COPY . /

RUN apk add --no-cache --update --upgrade openssh && \
    adduser -D socksproxy

ENTRYPOINT PORT=$PORT sh entrypoint.sh
