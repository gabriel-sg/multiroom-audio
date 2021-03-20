# Multiroom audio system
This repository contains a docker-compose file for an easy and quick way to setup a multiroom audio system for any amd64 or armhf hardware (working perfectly on my Raspberry Pi 3 with raspbian).
The system use [Mopidy](https://mopidy.com/) as the main backend server, [Iris](https://github.com/jaedb/iris) for an awesome web frontend and [Snapcast](https://github.com/badaix/snapcast) as the synchronous multiroom audio player.

The system can be customize by adding extensions to Mopidy. Some of the most popular are the following:
  - [Mopidy-mdp](https://github.com/mopidy/mopidy-mpd)
  - [Mopidy-Tidal](https://github.com/tehkillerbee/mopidy-tidal)
  - [Mopidy-local](https://github.com/mopidy/mopidy-local)
  - [Mopidy-Spotify](https://github.com/mopidy/mopidy-spotify)
  - [Mopidy-SoundCloud](https://github.com/mopidy/mopidy-soundcloud)
  - [Mopidy-GMusic](https://github.com/mopidy/mopidy-gmusic)
  - [Mopidy-YouTube](https://github.com/natumbri/mopidy-youtube)
  - [Mopidy-SomaFM](https://github.com/AlexandrePTJ/mopidy-somafm)
  - [Mopidy-RadioNet](https://github.com/plintx/mopidy-radionet)

By default, all this extensions are installed but only the Mopidy-mpd and Mopidy-SomaFM are enable (see *mopidy.example.conf* file). Iris works perfectly with the spotify extension but it requires premium account.

## Requirements
- amd64 or armhf computer with docker and docker-compose installed.
- Speakers or Android device.

## Getting started
    git clone https://github.com/gabriel-sg/multiroom-audio.git
    cd multiroom-audio

### Build and run docker images
Set snapserver arch in *docker-compose.yaml* (armhf or amd64) and then run.

    docker-compose up

### Install Snapclient
In order to listen the music it's necesary to install snapclient. There are two options:
- [Official instructions](https://github.com/badaix/snapcast#installation)
- [Android app](https://play.google.com/store/apps/details?id=de.badaix.snapcast)

This repository has a script for easy installation and configuration of the snapclient service on Debian systems.

    sudo ./install-snapclient.sh [arch] [snapserver_address]
    e.g. sudo ./install-snapclient.sh amd64 localhost
### Listen to music
That's all! The system can be easily tested by playing audio clip provided in this repository.

    localhost:6680 -> Browse -> File -> media -> Monarch-of-the-street-clip.mp3
*localhost* must be the address to Mopidy server.
