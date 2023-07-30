#!/bin/bash
SERVICE_NAME=Kapture_report
DEPLOY_PATH=/home/sarika/microserver
PATH_TO_JAR=$DEPLOY_PATH/Kapture_report-0.0.1-SNAPSHOT.jar
PATH_TO_PROJECT_JAR=/home/sarika/bindu/Kapture_report/target/Kapture_report-0.0.1-SNAPSHOT.jar
PATH_TO_LOG=$DEPLOY_PATH/logs/autoreport.log
NEWRELIC_YML_PATH=/home/sarika/bindu/Kapture_report/newrelic.yml
NEWRELIC_JAR_PATH=/home/sarika/newrelic-java-agent/newrelic/newrelic.jar
#------------------PATH AND MEMORE CONFIGURATION-------------------------------
MEM_MIN="Xms 100M"
MEM_MAX="Xmx128M"
GC_VAR="-XX:+UseGIGC -Xss256k"
#------------------------------END-----------------------------------------
source /home/sarika/buildsript/bindu.sfh
