#!/system/bin/sh

MODDIR=${0%/*}

while [ "$(getprop sys.boot_completed)" != 1 ]; do
 sleep 2
done

# Permissions
chmod 777 data/adb/modules/LawRunProfiles/includes/*
./data/adb/modules/LawRunProfiles/includes/LRK.init.sh
