#!/system/bin/sh

MODDIR=${0%/*}

# Permissions
chmod +x /data/adb/modules/LawRunProfiles/includes/LRK.init.sh

while [ "$(getprop sys.boot_completed)" != 1 ]; do
 sleep 2
done

cd / && ./data/adb/modules/LawRunProfiles/includes/LRK.init.sh
