#!/bin/bash
./configure prefix=/usr/local \
            CONFIG_AAC=y \
	    CONFIG_ALSA=y \
	    CONFIG_FLAC=y \
	    CONFIG_MAD=y \
	    CONFIG_VORBIS=y \
	    CONFIG_OPUS=n \
            CONFIG_FFMPEG=n \
            CONFIG_JACK=n \
            CONFIG_PULSE=n \
            CONFIG_SAMPLERATE=n \
            CONFIG_ROAR=n &&
make -j $SHED_NUM_JOBS &&
make DESTDIR="$SHED_FAKE_ROOT" install
