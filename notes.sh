
# oneliner to poll the server and write to file
for i in {1..10}; do curl http://mbus.pts.umich.edu/shared/location_feed.xml; DATE=`date +%s%N`; echo "<ntime $DATE>"; done | gzip >> bar.gz
