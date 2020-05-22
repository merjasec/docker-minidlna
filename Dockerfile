FROM ubuntu:20.04

MAINTAINER Gasper Furman <gasper.furman@gf.si>

ENV DEBIAN_FRONTEND noninteractive

ENV TZ 'Europe/Ljubljana'
RUN echo $TZ > /etc/timezone && \
    apt-get update && apt-get install -y tzdata && \
    rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

RUN apt-get -y install joe nmap vim iputils-ping iproute2

RUN apt-get -y install minidlna

RUN apt-get clean

COPY files/* /

RUN chmod +x /*sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["start"]
