FROM jenkinsci/slave:alpine

ARG DOCKER_GID=990

USER root

RUN addgroup --gid ${DOCKER_GID} docker \
  && addgroup jenkins docker \
  && apk add --no-cache docker curl

RUN apk add --no-cache bzr

RUN apk add --update --no-cache python py-pip py-virtualenv

USER jenkins
