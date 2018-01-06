#!/bin/sh
alb=$1 ;echo $alb
#eject ;echo 'insert disk'
#sleep 10
#echo 'please close tray'
sleep 2
cd /opt/cdda ;mkdir $alb;cd $alb
cdparanoia -B
eject
cd ../
tar cf $alb.tar ./$alb
ls $alb/*.wav | sed "s@^.*track\([0-9][0-9]\).*@lame -h -V 2 $alb/track\1.cdda.wav $alb/t\1.mp3@"|sh
