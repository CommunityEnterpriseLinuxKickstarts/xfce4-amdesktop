#!/bin/sh
#todo setup a conditional to check for space on /tmp, if not enough space find where space and use that for TMPDIR

BUILD=17;#++
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
#optimizations:using a seperate drive or even better, tmpfs memory for 
	# --tmpdir signficantly speeds up the iso generation process.
	#make sure /tmp has enough space ~ 12G should work with the current setup
	#if you have enough memory increase your tmpfs for /tmp before running this, else mount/map a seperate drive
	#to /tmp/TMPDIR, If you have 16G memory, For a quick fix, just append "size=12G" to the /tmp mount options in /lib/systemd/system/tmp.mount, umount -l /tmp , systemctl eamon-reload, then systemctl start tmp.mount
#/lib/systemd/sytem/tmp.mount new eg.
#Options=mode=1777,strictatime,size=12G



if [ ! -d /tmp/TMPDIR ];then
	mkdir -v /tmp/TMPDIR	
else 
	rm -rfv /tmp/TMPDIR/*
fi

if [ ! -d ./CACHEDIR ];then
	mkdir -v ./CACHEDIR
else
	rm -rfv ./CACHEDIR/*
fi


nohup livecd-creator -v -c $NAME-$MYTHVER-$MYTHGITREL.cfg -f $NAME-$MYTHVER-$MYTHGITREL-$BUILD -t $NAME-$MYTHVER-$MYTHGITREL-$DATESTAMP-r$BUILD --product $NAME-$MYTHVER-$MYTHGITREL-$DATESTAMP-r$BUILD  --tmpdir=/tmp/TMPDIR/$NAME-$MYTHVER-$MYTHGITREL-$DATESTAMP-r$BUILD-TMPDIR --cache=./CACHEDIR/$NAME-$MYTHVER-$MYTHGITREL-$DATESTAMP-r$BUILD-CACHEDIR > ./LOGS/$NAME-$MYTHVER-$MYTHGITREL-$DATESTMP-r$BUILD.nohup.log  && sed -i "/#++$/s/=.*#/=$nextBUILD;#/" ${0} &
