#!/bin/bash

LOCATION=$1
TARGET_DIRECTORY='/home/camille/elodie_ws/src/logrotate.test/saved_bag'
REQUIRED_FILES='mcap'

hour=$2
minute=$3
let TIME=hour*60+minute
CURRENT_TIME=$(date '+%Y%m%d_%H%M%S')

mkdir "${TARGET_DIRECTORY}/incident_${CURRENT_TIME}"
TARGET_DIRECTORY="/home/camille/elodie_ws/src/logrotate.test/saved_bag/incident_${CURRENT_TIME}"
find $LOCATION -name "*.$REQUIRED_FILES" -type f -mmin -$TIME -exec mv -t $TARGET_DIRECTORY {} +

# Si scission par taille attendre fermeture du bag en cours ou stopper nouveau bag et relancer nouveau ?
