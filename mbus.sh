#!/bin/sh

while true
do
    DATE=`date +%s%N`;
    curl -s http://mbus.pts.umich.edu/shared/location_feed.xml | sed "s/<livefeed>/<livefeed>\n<ntime $DATE>/"  | gzip >> mbus_location.gz

    DATE=`date +%s%N`;
    curl -s http://mbus.pts.umich.edu/shared/location_feed.xml | sed "s/<livefeed>/<livefeed>\n<ntime $DATE>/"  | gzip >> mbus_public.gz
    sleep 1
 done
