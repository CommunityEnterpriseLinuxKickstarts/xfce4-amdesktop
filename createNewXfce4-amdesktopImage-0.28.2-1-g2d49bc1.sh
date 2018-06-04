#!/bin/sh
BUILD=19;#++
nextBUILD=$((++BUILD))
DATESTAMP=`date +%Y%m%d`
NAME=xfce4-amdesktop
MYTHVER=0.28.2
MYTHGITREL=1-g2d

if [ ! -d ./LOGS ];then
	mkdir -v ./LOGS
else
	rm -rfv ./LOGS/*
fi

if [ ! -d ./TMPDIR ];then
	mkdir -v ./TMPDIR	
else 
	rm -rfv ./TMPDIR/*
fi

if [ ! -d ./CACHEDIR ];then
	mkdir -v ./CACHEDIR
else
	rm -rfv ./CACHEDIR/*
fi


nohup livecd-creator -v -c $NAME-$MYTHVER-$MYTHGITREL.cfg -f $NAME-$MYTHVER-$MYTHGITREL-$BUILD -t $NAME-$MYTHVER-$MYTHGITREL-$DATESTAMP-r$BUILD --product $NAME-$MYTHVER-$MYTHGITREL-$DATESTAMP-r$BUILD  --tmpdir=./TMPDIR/$NAME-$MYTHVER-$MYTHGITREL-$DATESTAMP-r$BUILD-TMPDIR --cache=./CACHEDIR/$NAME-$MYTHVER-$MYTHGITREL-$DATESTAMP-r$BUILD-CACHEDIR > ./LOGS/$NAME-$MYTHVER-$MYTHGITREL-$DATESTMP-r$BUILD.nohup.log  && sed -i "/#++$/s/=.*#/=$nextBUILD;#/" ${0} &
