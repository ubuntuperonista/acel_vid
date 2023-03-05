#!/bin/bash
## el setpts es 1/ el factor de velocidad.
## el atempo es el factor de velocidad (para que el video coincida con el audio).
speed=1.13
mkdir $speed
for i in *.mp4;
do
##para acelerar un achivo de video llamado vid.mp4 usar esta línea:
    ffmpeg -i vid.mp4 -filter_complex "[0:v]setpts=0.884955752*PTS[v];[0:a]atempo=1.13[a]" -map "[v]" -map "[a]" fast_vid.mp4    
## para acelerar mp4 de audio usar esta línea:
#   ffmpeg -i "$i" -filter:a atempo=$speed -vn -y $speed/"$i"
done
