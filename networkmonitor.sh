NOW=$(date +"%b-%d-%y")
tcpdump -q -w accesslog-$NOW.pcap &
pid=$!
sleep 6h
kill $pid