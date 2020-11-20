NOW=$(date +"%b-%d-%y")
diff /var/log backup/log >changes-$NOW.txt
cp -r /var/log backup/log