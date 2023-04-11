#!/usr/bin/bash

LOCATION='/home/camille/elodie_ws/src/logrotate.test/bag_demo*';
REQUIRED_FILES='*.mcap';

# find /home/camille/elodie_ws/src/logrotate.test/bag_demo -name '*.mcap' -type f -mmin +5 -delete;

find $LOCATION -name $REQUIRED_FILES -type f -mmin +5 -delete;
