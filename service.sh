#!/system/bin/sh

MODDIR=${0%/*}

while [ "$(getprop sys.boot_completed)" != 1 ]; do
 sleep 2
done

# Permissions
chown root /system/etc/LawRun/LRK.init.sh
chmod +x /system/etc/LawRun/LRK.init.sh
/system/etc/LawRun/LRK.init.sh &
