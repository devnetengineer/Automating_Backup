#!/bin/bash
#TIME== This variable represents the time/date
#FILENAME== This variable represents how the file will be named
#SRCDIR== This variable represents the directory that will be backed-up to the SFTP server
#DESDIR== This variable represents the directory on the container that the data will be backed to
#
TIME=`date +%b-%d-%y`
FILENAME=backup-home-$TIME.tar.gz
SRCDIR=/root/upload
DESDIR=/bruce/home/
tar -cpzf $DESDIR/$FILENAME $SRCDIR



