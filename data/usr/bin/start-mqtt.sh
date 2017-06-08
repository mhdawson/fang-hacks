#!/bin/sh
export CURRENT_DIR=$(dirname "$0")
export LD_LIBRARY_PATH=/media/mmcblk0p2/data/usr/lib:$LD_LIBRARY_PATH
source $CURRENT_DIR/snapshot-config.sh
cd $CURRENT_DIR
$CURRENT_DIR/PIWCmain "$MQTT_TOPIC_PREFIX/$CAMERA_ID/capture" "$MQTT_TOPIC_PREFIX/$CAMERA_ID/newpicture" "$MQTT_URL" "$CERTS_DIR"
