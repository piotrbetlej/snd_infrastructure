#!/bin/bash
cd /sound;
# ffmpeg -ac 1 -f alsa -i hw:1,0 -acodec libmp3lame -f mp3 pipe:1 | mp3splt -f -t 30.0 m-;
# ffmpeg does not support recording from dsnoop, using lame instead
arecord -D snoop -f cd -t raw -c 1 | lame -x -r - | mp3splt -f -t 30.0 m-
