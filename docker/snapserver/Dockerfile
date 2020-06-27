FROM ubuntu:bionic

RUN apt-get update && apt-get install wget libavahi-client3 libavahi-common3 libflac8 libogg0 libopus0 libvorbis0a libvorbisenc2 -y

ARG SNAPCASTVERSION=0.20.0
ARG SNAPCAST_FILE="0.20.0-1"
ARG ARCH="armhf"

RUN wget 'https://github.com/badaix/snapcast/releases/download/v'$SNAPCASTVERSION'/snapserver_'$SNAPCAST_FILE'_'$ARCH'.deb'

RUN dpkg -i --force-all 'snapserver_'$SNAPCAST_FILE'_'$ARCH'.deb'
RUN apt-get -f install -y

RUN mkdir -p /root/.config/snapcast/

VOLUME ["/tmp"]

EXPOSE 1704
EXPOSE 1780

ENTRYPOINT ["snapserver"]