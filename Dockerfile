FROM python:3.7.6-slim-buster
#FROM python:2.7.18-slim-buster

RUN apt-get update && apt-get install curl -y

COPY appconfig.tgz /opt/configscripts/appconfig.tgz

CMD ["sleep", "infinity"]
