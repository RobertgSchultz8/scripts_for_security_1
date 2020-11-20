#should be set to run daily, 6 AM is a good time for that
#including the date the script was run in the output file name makes it possible to track when changes were made from one day to another
NOW=$(date +"%b-%d-%y")
diff /var/log backup/log >changes-$NOW.txt
#before running the script the first time, a copy of the /var/log directory should be created
#copying the directory allows the script to be run every day with new data to compare to
cp -r /var/log backup/log
