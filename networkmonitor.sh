#adding the date the script was run to the output file name allows keeping track of server access over multiple days
NOW=$(date +"%b-%d-%y")
tcpdump -q -w accesslog-$NOW.pcap &
pid=$!
#originally, I wanted to use cron to have a script job that runs continuosly for six hours, but I could not get that to work as well
#there is probably a way to do that, but I am not sure what it is, so I'll settle for killing the process after six hours
sleep 6h
kill $pid
