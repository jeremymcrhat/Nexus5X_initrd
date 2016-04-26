#!/bin/bash

TARGETDIR=$1

# This script is automatically run just before image building.
# Use it to modify the rootfs before everything is assembled into an image.
# $1 is the path to the rootfs that's about to be built into an image.


ln -sf /dev/null $TARGETDIR/dev/tty2
ln -sf /dev/null $TARGETDIR/dev/tty3
ln -sf /dev/null $TARGETDIR/dev/tty4

cp board/nexus_5x/fix_tty.sh $TARGETDIR/a.sh

mkdir -p $TARGETDIR/etc/init.d 
cp board/nexus_5x/fix_tty.sh $TARGETDIR/etc/init.d/rcS




