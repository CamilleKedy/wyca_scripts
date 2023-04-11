#!/bin/bash

LOCATION='/home/camille/elodie_ws/src/logrotate.test/saved_bag'
TARGET_DIRECTORY='/home/camille/elodie_ws/src/logrotate.test/saved_bag'
REQUIRED_FILES='mcap'

INCIDENT_DIRECTORY=$1
export PATH="/home/camille:$PATH"

source /home/camille/.bashrc

# find $INCIDENT_DIRECTORY -name "*.$REQUIRED_FILES" -type f -exec BASENAME=$(basename {} .mcap) &&  mcap compress {} -o "${BASENAME}_compressed.mcap" && rm {} \;
find $INCIDENT_DIRECTORY -name "*.$REQUIRED_FILES" -type f -exec /bin/bash -c 'BASENAME=$(basename {} .mcap)' \; -exec mcap compress {} -o "${BASENAME}_compressed.mcap" \; # -exec rm {} \;

# for file in $INCIDENT_DIRECTORY;
#  do BASENAME=$(basename $file .mcap) && mcap compress $file -o ${BASENAME}_compressed.mcap && rm $file; done
