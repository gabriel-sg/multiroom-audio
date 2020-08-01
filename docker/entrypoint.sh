#!/bin/bash
if [ -z "$PULSE_COOKIE_DATA" ]
then
    echo -ne $(echo $PULSE_COOKIE_DATA | sed -e 's/../\\x&/g') >$HOME/pulse.cookie
    export PULSE_COOKIE=$HOME/pulse.cookie
fi

sudo chown mopidy:audio -R $HOME /iris
sudo chmod go+rwx -R $HOME /iris

# mopidy local scan
exec "$@"
