#!/bin/bash
# Use -> install-snapclient [arch] [snapserver_address].
arch=${1:-amd64} # or armhf
snapserver_address=${2:-localhost}

curl -o snapclient.deb -L https://github.com/badaix/snapcast/releases/download/v0.20.0/snapclient_0.20.0-1_$arch.deb && \
    apt-get install -y ./snapclient.deb && \
    rm -f snapclient.deb && \
    printf 'START_SNAPCLIENT=true\nSNAPCLIENT_OPTS="-h %s"' $snapserver_address > /etc/default/snapclient
    systemctl enable snapclient
    systemctl restart snapclient
