#!/bin/bash

INSTANCEID=`curl http://169.254.169.254/latest/meta-data/instance-id`
echo "#######################################################"
echo "This is complainace data for instance $INSTANCEID"
echo "#######################################################"
BHTIME=`date '+DATE: %m/%d/%y TIME:%H:%M:%S'`
echo "this has been checked on date $BHTIME"
echo "----------------------------------------------------------"
echo "1st Check of the Resolv.conf file"
cat /etc/resolv.conf
echo "----------------------------------------------------------"

echo "2nd check for ls -l"
ls -l
echo "----------------------------------------------------------"
echo "3rd check for ls -l"
ls -ltr
