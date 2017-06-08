#!/bin/sh
export CURRENT_DIR=$(dirname "$0")
source $CURRENT_DIR/snapshot-config.sh
export HOME=/media/mmcblk0p2/data/bin
rm -f /tmp/snaplist.txt 
touch /tmp/snapshot_en
while  [  ! -f /tmp/snaplist.txt ]
  do
     usleep 100000
  done
NEWFILE=`cat /tmp/snaplist.txt`
mv $NEWFILE $1

chmod 755 $1
scp -i $SSH_KEY -P 20022 $1 $PICTURE_HOST/$CAMERA_ID-$1
rm $1
