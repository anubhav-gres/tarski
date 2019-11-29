#!/bin/bash

TMP=`find ./classical/ -maxdepth 2 -type f -name '*'`

# Begin Remove logs
DEL=`find ./stderr_dir/ -maxdepth 2 -type f -name '*'`
for f in $DEL
do
    echo "Deleting $f"
    rm $f
done
# End Remove logs

f1=0
domain=""
problem=""

#OVERALL STATUS REPORT
echo domain, problem, status, time_taken, memory_usage, log_file > status_report.csv

count=0
for i in $TMP 
do
    if [ $f1 -eq 0 ] ; then
        if  [[ $i == *"domain"* ]]; then
            domain=$i
        else
            problem=$i
        fi
        f1=$(($f1+1))
    elif [ $f1 -ge 1 ] ; then
        if  [[ $i == *"domain"* ]]; then
            domain=$i
        else
            problem=$i
        fi
        f1=0
        echo "Starting with $(dirname $domain)" $domain $problem
        # OVERALL STATUS REPORT
        python3 tarski_test.py -d $domain -p $problem >>status_report.csv 2>"stderr_dir/$(basename $(dirname $domain))_stderr.log"
        count=$(($count+1))
    fi
done

# THE FAILURE REPORT
echo domain, problem, status, time_taken, memory_usage, log_file > failure_report.csv
cat status_report.csv | grep failure >> failure_report.csv
x=`cat status_report.csv | grep failure | wc -l`
if [ $x -ge 1 ] ; then
    echo "GROUNDING FAILED FOR $(($x-1)) DOMAINS out of $count :("
else
    echo "EUREKA! GROUNDING SUCCEEDED FOR ALL"
fi
