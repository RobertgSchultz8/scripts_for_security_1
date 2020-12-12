#auditd can be used to record changes to hidden files and directories
#script should be set to run daily using cron, best time is at midnight
#We need to get the date first so we can add that to the file name at the end
NOW=$(date +"%b-%d-%y")
#Now we do a search based on the rules we set up
ausearch --input-logs -k main-check -ts yesterday te now -i -l > audit-$NOW.txt
ausearch --input-logs -k second-check -ts yesterday te now -i -l >> audit-$NOW.txt
ausearch --input-logs -k logout-check -ts yesterday te now -i -l >> audit-$NOW.txt
ausearch --input-logs -k profile-check -ts yesterday te now -i -l >> audit-$NOW.txt
ausearch --input-logs -k bashrc-check -ts yesterday te now -i -l >> audit-$NOW.txt
ausearch --input-logs -k cshrc-check -ts yesterday te now -i -l >> audit-$NOW.txt
ausearch --input-logs -k ssh-check -ts yesterday te now -i -l >> audit-$NOW.txt
ausearch --input-logs -k tcshrc-check -ts yesterday te now -i -l >> audit-$NOW.txt
