FROM ubuntu:latest
MAINTAINER William <gitxpresso@outlook.com>

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y xorg nano locate zsh supervisor logrotate git curl wget tightvncserver openssh-server \
    lubuntu-desktop \
 && rm -rf /var/lib/apt/lists/*

COPY assets/install /opt/install
RUN chmod 755 /opt/install
RUN /opt/install

COPY assets/init /opt/init
RUN chmod 755 /opt/init

VOLUME ["/home/lubuntu/share"]
WORKDIR /home/lubuntu

ENTRYPOINT ["/opt/init"]
CMD ["start"]

EXPOSE 22 5901-5999
