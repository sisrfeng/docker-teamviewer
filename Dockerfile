FROM debian:jessie

MAINTAINER Bruno Binet <bruno.binet@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -yq && apt-get install -yq --no-install-recommends sudo ca-certificates procps adduser curl \
    && echo "bruno     ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/bruno \
    && adduser --disabled-password --gecos bruno bruno

RUN apt-get install -yq --no-install-recommends curl
RUN curl -fSL -o /tmp/teamviewer_linux.deb https://download.teamviewer.com/download/linux/teamviewer_amd64.deb && \
    dpkg -i /tmp/teamviewer_linux.deb || apt-get install -yq --no-install-recommends -f

USER bruno
ENV USER bruno
ENV DISPLAY :0.0

VOLUME ["/tmp/.X11-unix"]

CMD teamviewer
