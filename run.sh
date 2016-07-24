#!/bin/bash
cd /sound;
ffmpeg -ac 1 -f alsa -i hw:1,0 -acodec libmp3lame -f mp3 pipe:1 | mp3splt -f -t 30.0 m-;
